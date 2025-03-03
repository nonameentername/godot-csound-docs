all:
	cd modules/godot-csound/doc_classes && make rst
	cp -r tutorials/csound/ modules/godot-docs/tutorials/
	cp index.rst modules/godot-docs/
	cp modules/godot-csound/doc_classes/_build/rst/* modules/godot-docs/classes/
	cd modules/godot-docs && make html

install:
	pip install -r modules/godot-docs/requirements.txt
