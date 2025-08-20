EXT_FILE = vscode-extensions.txt

all: list

list:
	@echo "Listing installed VS Code extensions..."
	@code --list-extensions > $(EXT_FILE)
	@echo "Saved to $(EXT_FILE)"

install:
	@echo "Installing VS Code extensions from $(EXT_FILE)..."
	@while IFS= read -r ext; do \
		code --install-extension "$$ext"; \
	done < $(EXT_FILE)
	@echo "Installation complete."

clean:
	@rm -f $(EXT_FILE)
	@echo "$(EXT_FILE) removed."