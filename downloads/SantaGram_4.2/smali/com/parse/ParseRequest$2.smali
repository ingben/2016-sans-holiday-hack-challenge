.class Lcom/parse/ParseRequest$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseRequest;->sendOneRequestAsync(Lcom/parse/ParseHttpClient;Lcom/parse/a/b;Lcom/parse/ProgressCallback;)La/j;
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
        "<TResponse;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseRequest;


# direct methods
.method constructor <init>(Lcom/parse/ParseRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseRequest$2;->this$0:Lcom/parse/ParseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<TResponse;>;)",
            "La/j",
            "<TResponse;>;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v0

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parse/ParseRequest$2;->this$0:Lcom/parse/ParseRequest;

    const-string v2, "i/o failure"

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseRequest;->newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Exception;)La/j;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseRequest$2;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
