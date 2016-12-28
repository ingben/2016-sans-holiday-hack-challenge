.class Lcom/parse/ParseQuery$3$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$3;->call()La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Lcom/parse/ParseUser;",
        "La/j",
        "<",
        "Ljava/util/List",
        "<TT;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseQuery$3;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$3;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseQuery$3$1;->this$1:Lcom/parse/ParseQuery$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lcom/parse/ParseUser;",
            ">;)",
            "La/j",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/parse/ParseQuery$3$1;->this$1:Lcom/parse/ParseQuery$3;

    iget-object v1, v1, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    iget-object v2, p0, Lcom/parse/ParseQuery$3$1;->this$1:Lcom/parse/ParseQuery$3;

    iget-object v2, v2, Lcom/parse/ParseQuery$3;->val$state:Lcom/parse/ParseQuery$State;

    iget-object v3, p0, Lcom/parse/ParseQuery$3$1;->this$1:Lcom/parse/ParseQuery$3;

    iget-object v3, v3, Lcom/parse/ParseQuery$3;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->cts:La/k;
    invoke-static {v3}, Lcom/parse/ParseQuery;->access$2000(Lcom/parse/ParseQuery;)La/k;

    move-result-object v3

    invoke-virtual {v3}, La/k;->a()La/j;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/parse/ParseQuery;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$3$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
