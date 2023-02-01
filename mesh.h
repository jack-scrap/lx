#include <GL/glew.h>

class Mesh {
	private:
		GLuint _vao;
		GLuint _vbo;

	public:
		Mesh(GLfloat* vtc, unsigned int noVtc);

		~Mesh();
};
