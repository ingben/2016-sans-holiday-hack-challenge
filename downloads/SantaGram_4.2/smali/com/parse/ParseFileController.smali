.class Lcom/parse/ParseFileController;
.super Ljava/lang/Object;


# instance fields
.field private awsClient:Lcom/parse/ParseHttpClient;

.field private final cachePath:Ljava/io/File;

.field private final lock:Ljava/lang/Object;

.field private final restClient:Lcom/parse/ParseHttpClient;


# direct methods
.method public constructor <init>(Lcom/parse/ParseHttpClient;Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFileController;->lock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/parse/ParseFileController;->restClient:Lcom/parse/ParseHttpClient;

    iput-object p2, p0, Lcom/parse/ParseFileController;->cachePath:Ljava/io/File;

    return-void
.end method


# virtual methods
.method awsClient(Lcom/parse/ParseHttpClient;)Lcom/parse/ParseFileController;
    .locals 2

    iget-object v1, p0, Lcom/parse/ParseFileController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/parse/ParseFileController;->awsClient:Lcom/parse/ParseHttpClient;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method awsClient()Lcom/parse/ParseHttpClient;
    .locals 2

    iget-object v1, p0, Lcom/parse/ParseFileController;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseFileController;->awsClient:Lcom/parse/ParseHttpClient;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->newHttpClient()Lcom/parse/ParseHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFileController;->awsClient:Lcom/parse/ParseHttpClient;

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseFileController;->awsClient:Lcom/parse/ParseHttpClient;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearCache()V
    .locals 4

    iget-object v0, p0, Lcom/parse/ParseFileController;->cachePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public fetchAsync(Lcom/parse/ParseFile$State;Ljava/lang/String;Lcom/parse/ProgressCallback;La/j;)La/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseFile$State;",
            "Ljava/lang/String;",
            "Lcom/parse/ProgressCallback;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-eqz p4, :cond_0

    invoke-virtual {p4}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La/j;->i()La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseFileController;->getCacheFile(Lcom/parse/ParseFile$State;)Ljava/io/File;

    move-result-object v2

    new-instance v0, Lcom/parse/ParseFileController$4;

    invoke-direct {v0, p0, v2}, Lcom/parse/ParseFileController$4;-><init>(Lcom/parse/ParseFileController;Ljava/io/File;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v6

    new-instance v0, Lcom/parse/ParseFileController$3;

    move-object v1, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseFileController$3;-><init>(Lcom/parse/ParseFileController;Ljava/io/File;La/j;Lcom/parse/ParseFile$State;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v6, v0}, La/j;->b(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheFile(Lcom/parse/ParseFile$State;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/parse/ParseFileController;->cachePath:Ljava/io/File;

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getTempFile(Lcom/parse/ParseFile$State;)Ljava/io/File;
    .locals 4

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/parse/ParseFileController;->cachePath:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isDataAvailable(Lcom/parse/ParseFile$State;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseFileController;->getCacheFile(Lcom/parse/ParseFile$State;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public saveAsync(Lcom/parse/ParseFile$State;Ljava/io/File;Ljava/lang/String;Lcom/parse/ProgressCallback;La/j;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseFile$State;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/parse/ProgressCallback;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Lcom/parse/ParseFile$State;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La/j;->i()La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/parse/ParseRESTFileCommand$Builder;

    invoke-direct {v0}, Lcom/parse/ParseRESTFileCommand$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTFileCommand$Builder;->fileName(Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/parse/ParseRESTFileCommand$Builder;->file(Ljava/io/File;)Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->mimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTFileCommand$Builder;->contentType(Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/parse/ParseRESTFileCommand$Builder;->sessionToken(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseRESTFileCommand$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseRESTFileCommand$Builder;->build()Lcom/parse/ParseRESTFileCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->enableRetrying()V

    iget-object v1, p0, Lcom/parse/ParseFileController;->restClient:Lcom/parse/ParseHttpClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p5}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;La/j;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFileController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/ParseFileController$2;-><init>(Lcom/parse/ParseFileController;Lcom/parse/ParseFile$State;Ljava/io/File;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/j;->c(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public saveAsync(Lcom/parse/ParseFile$State;[BLjava/lang/String;Lcom/parse/ProgressCallback;La/j;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseFile$State;",
            "[B",
            "Ljava/lang/String;",
            "Lcom/parse/ProgressCallback;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Lcom/parse/ParseFile$State;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La/j;->i()La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/parse/ParseRESTFileCommand$Builder;

    invoke-direct {v0}, Lcom/parse/ParseRESTFileCommand$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTFileCommand$Builder;->fileName(Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/parse/ParseRESTFileCommand$Builder;->data([B)Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseFile$State;->mimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTFileCommand$Builder;->contentType(Ljava/lang/String;)Lcom/parse/ParseRESTFileCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/parse/ParseRESTFileCommand$Builder;->sessionToken(Ljava/lang/String;)Lcom/parse/ParseRESTCommand$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseRESTFileCommand$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseRESTFileCommand$Builder;->build()Lcom/parse/ParseRESTFileCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->enableRetrying()V

    iget-object v1, p0, Lcom/parse/ParseFileController;->restClient:Lcom/parse/ParseHttpClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p5}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;La/j;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseFileController$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/ParseFileController$1;-><init>(Lcom/parse/ParseFileController;Lcom/parse/ParseFile$State;[B)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/j;->c(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    goto :goto_0
.end method
