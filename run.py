#!/usr/bin/env python3

import os
import shutil
from datetime import datetime
import sys
from pathlib import Path

def create_backup_name(path):
    """Create a backup name with timestamp for existing files/folders."""
    timestamp = datetime.now().strftime('%Y%m%d_%H%M%S')
    return f"old__{path.name}_{timestamp}"

def setup_config(source_path, dest_path):
    """
    Set up configuration files by copying from source to destination.
    If destination exists, create a backup before copying.
    """
    source = Path(source_path)
    dest = Path(dest_path).expanduser()
    
    # Check if source exists
    if not source.exists():
        print(f"Error: Source {source} does not exist")
        return False
    
    # If destination exists, create backup
    if dest.exists():
        backup_path = dest.parent / create_backup_name(dest)
        print(f"Creating backup: {backup_path}")
        if dest.is_file():
            shutil.copy2(dest, backup_path)
        else:
            shutil.copytree(dest, backup_path)
        
        # Remove existing destination
        if dest.is_file():
            dest.unlink()
        else:
            shutil.rmtree(dest)
    
    # Create parent directories if they don't exist
    dest.parent.mkdir(parents=True, exist_ok=True)
    
    # Copy new configuration
    print(f"Copying {source} to {dest}")
    if source.is_file():
        shutil.copy2(source, dest)
    else:
        shutil.copytree(source, dest)
    
    return True

def main():
    # Define source directory (where your configs are stored)
    source_dir = Path(__file__).parent
    
    # Define mapping of source files to their destinations
    config_mapping = {
        "tmux.conf": "~/.tmux.conf",
        "nvim": "~/.config/nvim"
    }
    
    # Process each configuration
    for source_name, dest_path in config_mapping.items():
        source_path = source_dir / source_name
        success = setup_config(source_path, dest_path)
        if success:
            print(f"Successfully set up {source_name}")
        else:
            print(f"Failed to set up {source_name}")
            sys.exit(1)
    
    print("\nAll configurations have been set up successfully!")

if __name__ == "__main__":
    main()
