#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

int string2int(char* method) {
    int ret = 0;
    while(*method != '\0') {
        ret += *method++;
    }
    return ret;
}

/* http methods code */
int http_method_get = 'G'+'E'+'T';
#define GET http_method_get
int http_method_post = 'P'+'O'+'S'+'T';
#define POST http_method_post
int http_method_put = 'P'+'U'+'T';
#define PUT http_method_put
int http_method_delete = 'D'+'E'+'L'+'E'+'T'+'E';
#define DELETE http_method_delete
int http_method_options = 'O'+'P'+'T'+'I'+'O'+'N'+'S';
#define OPTIONS http_method_options
int http_method_any = 'A'+'N'+'Y';
#define ANY http_method_any
/* get http methods code from string representation*/


typedef struct TNode
{
    char*           strnode;
    int*            intnode;
    struct TNode*   nextnode;
} Tree;

/* Tree* Root = NULL; */

typedef struct {
    int*           depth;
} AvaliableDepth;

typedef struct AvaliableMethods {
    AvaliableDepth* get;
    AvaliableDepth* post;
    AvaliableDepth* put;
};


MODULE = Router::PathInfoXS		PACKAGE = Router::PathInfoXS   PREFIX = pxs_		

# Router::PathInfoXS
int
pxs_test(class, research_word)
    char* class;
    char* research_word;
    PREINIT:
        PERL_UNUSED_VAR(class);
    CODE:
        {
            printf("Начинаем сравнение\n");
            printf("получено слово: '%s'\n", research_word);
            const char *string2 = "Тест";
            printf("Результат сравнения со словом '%s': %d\n======\n", string2, strcmp(research_word, string2));
            
            /*
            printf("ddd = %d\n", string2int("POST"));
            printf("ddd1 = %d\n", 'P'+'O'+'S'+'T');
            printf("ddd2 = %d\n", 'O'+'P'+'S'+'T');
            printf("ddd3 = %d\n", "POST");
            printf("ddd3 = %d\n", "POST1");
            printf("ddd3 = %d\n", "OPST");            
            printf("ddd3 = %d\n", "Привет");
            printf("ddd3 = %d\n", "Приветы");
            printf("ddd3 = %d\n", "рПивет");
            char* eee = {"рПивет"};
            printf("ddd3 = %d\n", eee);
            printf("ddd = %d\n", POST);
            */
            
            int j;
            sscanf("Привет", "%d", &j);
            printf("sscanf: %d\n",j);
            
            
            char* ggg = "рПивет";
            int dd;
            sscanf(ggg, "%s", &dd);
            printf("sscanf: %d\n",dd);
            
            ggg = "рПиветs";
            sscanf(ggg, "%s", &dd);
            printf("sscanf: %d\n",dd);
            
                        
            /*
            p=malloc(sizeof(DL));
            p->val=10;   p->n=NULL;
            */
            
            /*
            таблица комманд
              struct command
              {
                char *name;
                void (*function) ();
              };
         
              struct command commands[] =
              {
                { "quit", quit_command},
                { "help", help_command},
                ...
              };            
            */
            
            int add[] = {1,2,3};
            
            RETVAL = 1;
        }
    OUTPUT:
        RETVAL


