.class Lcom/parse/ParseRequest$4$1$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequest$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<TResponse;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParseRequest$4$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest$4$1;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseRequest$4$1$1;->this$2:Lcom/parse/ParseRequest$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<TResponse;>;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseRequest$4$1$1;->this$2:Lcom/parse/ParseRequest$4$1;

    iget-object v0, v0, Lcom/parse/ParseRequest$4$1;->val$retryTask:La/k;

    invoke-virtual {v0}, La/k;->c()V

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseRequest$4$1$1;->this$2:Lcom/parse/ParseRequest$4$1;

    iget-object v0, v0, Lcom/parse/ParseRequest$4$1;->val$retryTask:La/k;

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRequest$4$1$1;->this$2:Lcom/parse/ParseRequest$4$1;

    iget-object v0, v0, Lcom/parse/ParseRequest$4$1;->val$retryTask:La/k;

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$4$1$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
