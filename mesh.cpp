#include "mesh.h"

Mesh::Mesh(GLfloat* vtc, unsigned int noVtc) {
	glGenVertexArrays(1, &_vao);
	glBindVertexArray(_vao);

	glGenBuffers(1, &_vbo);
	glBindBuffer(GL_ARRAY_BUFFER, _vbo);

	glBufferData(GL_ARRAY_BUFFER, noVtc * sizeof (GLfloat), vtc, GL_STATIC_DRAW);
}

Mesh::~Mesh() {
	glDeleteBuffers(1, &_vao);
	glDeleteBuffers(1, &_vbo);
}
