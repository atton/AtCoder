#include <iostream>
#include <string>

std::string music[128];
int n;

int solve (int line, int pos) {
    if (line < 0 || line >= n) return 0;
    if (pos  < 0 || pos  >= 9) return 0;

    if (music[line].at(pos) == 'o') {
        while (line < n && music[line].at(pos) == 'o' ) {
            music[line].replace(pos, 1, ".");
            line++;
        }
        return 1;
    }

    if (music[line].at(pos) == 'x') {
        music[line].replace(pos, 1, ".");
        return 1;
    }

    return 0;
}

int main(int argc, char const* argv[]) {
    std::cin >> n;

    for (int i = 0; i < n; i++) {
        std::string str;
        std::cin >> str;
        music[i] = str;
    }

    int answer = 0;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < 9; j++) {
            answer += solve(i, j);
        }
    }

    std::cout << answer << std::endl;
    return 0;
}
