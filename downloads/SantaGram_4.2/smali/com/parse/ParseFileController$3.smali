.class Lcom/parse/ParseFileController$3;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFileController;->fetchAsync(Lcom/parse/ParseFile$State;Ljava/lang/String;Lcom/parse/ProgressCallback;La/j;)La/j;
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
        "Ljava/lang/Boolean;",
        "La/j",
        "<",
        "Ljava/io/File;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFileController;

.field final synthetic val$cacheFile:Ljava/io/File;

.field final synthetic val$cancellationToken:La/j;

.field final synthetic val$downloadProgressCallback:Lcom/parse/ProgressCallback;

.field final synthetic val$state:Lcom/parse/ParseFile$State;


# direct methods
.method constructor <init>(Lcom/parse/ParseFileController;Ljava/io/File;La/j;Lcom/parse/ParseFile$State;Lcom/parse/ProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseFileController$3;->this$0:Lcom/parse/ParseFileController;

    iput-object p2, p0, Lcom/parse/ParseFileController$3;->val$cacheFile:Ljava/io/File;

    iput-object p3, p0, Lcom/parse/ParseFileController$3;->val$cancellationToken:La/j;

    iput-object p4, p0, Lcom/parse/ParseFileController$3;->val$state:Lcom/parse/ParseFile$State;

    iput-object p5, p0, Lcom/parse/ParseFileController$3;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "La/j",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseFileController$3;->val$cacheFile:Ljava/io/File;

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseFileController$3;->val$cancellationToken:La/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseFileController$3;->val$cancellationToken:La/j;

    invoke-virtual {v0}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La/j;->i()La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseFileController$3;->this$0:Lcom/parse/ParseFileController;

    iget-object v1, p0, Lcom/parse/ParseFileController$3;->val$state:Lcom/parse/ParseFile$State;

    invoke-virtual {v0, v1}, Lcom/parse/ParseFileController;->getTempFile(Lcom/parse/ParseFile$State;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseAWSRequest;

    sget-object v2, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    iget-object v3, p0, Lcom/parse/ParseFileController$3;->val$state:Lcom/parse/ParseFile$State;

    invoke-virtual {v3}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/parse/ParseAWSRequest;-><init>(Lcom/parse/a/b$b;Ljava/lang/String;Ljava/io/File;)V

    iget-object v2, p0, Lcom/parse/ParseFileController$3;->this$0:Lcom/parse/ParseFileController;

    invoke-virtual {v2}, Lcom/parse/ParseFileController;->awsClient()Lcom/parse/ParseHttpClient;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parse/ParseFileController$3;->val$downloadProgressCallback:Lcom/parse/ProgressCallback;

    iget-object v5, p0, Lcom/parse/ParseFileController$3;->val$cancellationToken:La/j;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/parse/ParseAWSRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;La/j;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFileController$3$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseFileController$3$1;-><init>(Lcom/parse/ParseFileController$3;Ljava/io/File;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseFileController$3;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
