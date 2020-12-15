#include <sys/stat.h>
#include <sys/types.h>
#include <stdio.h>
int main (int argc, char *argv[])
{
	struct stat info;
if ( stat(argv[1], &info) != -1 )
{
printf("파일명 : %s\n",argv[1]);
printf("파일시스템 : %d\n", info.st_dev);
printf("장치번호 : %d\n", info.st_rdev);
printf("inode 번호 : %d\n", info.st_ino);
printf("파일 종류와 모드 : %o\n", info.st_mode);
printf("하드링크 수 : %d\n", info.st_nlink);
printf("소유자 ID : %d\n", info.st_uid);
printf("그룹 ID : %d\n", info.st_gid);
printf("파일 크기(바이트단위) : %d\n", info.st_size);
printf("블록 크기 : %d\n", info.st_blksize);
printf("할당 블록 수 : %d\n", info.st_blocks);
printf("마지막 접근시간 : %d\n", info.st_atime);
printf("마지막 상태 변경시간 : %d\n", info.st_ctime);
printf("마지막 내용 수정시간 : %d\n", info.st_mtime);
}
else
fprintf(stderr, "stat() 오류\n");
return 0;
}
