.class Lcom/parse/ParseAuthenticationManager;
.super Ljava/lang/Object;


# instance fields
.field private final callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/AuthenticationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final controller:Lcom/parse/ParseCurrentUserController;

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/parse/ParseCurrentUserController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseAuthenticationManager;->lock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseAuthenticationManager;->callbacks:Ljava/util/Map;

    iput-object p1, p0, Lcom/parse/ParseAuthenticationManager;->controller:Lcom/parse/ParseCurrentUserController;

    return-void
.end method


# virtual methods
.method public deauthenticateAsync(Ljava/lang/String;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseAuthenticationManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseAuthenticationManager;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/AuthenticationCallback;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/parse/ParseAuthenticationManager$3;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseAuthenticationManager$3;-><init>(Lcom/parse/ParseAuthenticationManager;Lcom/parse/AuthenticationCallback;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v1, v0}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public register(Ljava/lang/String;Lcom/parse/AuthenticationCallback;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid authType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/parse/ParseAuthenticationManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseAuthenticationManager;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback already registered for <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseAuthenticationManager;->callbacks:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseAuthenticationManager;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "anonymous"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/parse/ParseAuthenticationManager;->controller:Lcom/parse/ParseCurrentUserController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/parse/ParseCurrentUserController;->getAsync(Z)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseAuthenticationManager$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseAuthenticationManager$1;-><init>(Lcom/parse/ParseAuthenticationManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    goto :goto_0
.end method

.method public restoreAuthenticationAsync(Ljava/lang/String;Ljava/util/Map;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseAuthenticationManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseAuthenticationManager;->callbacks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/AuthenticationCallback;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    new-instance v1, Lcom/parse/ParseAuthenticationManager$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/parse/ParseAuthenticationManager$2;-><init>(Lcom/parse/ParseAuthenticationManager;Lcom/parse/AuthenticationCallback;Ljava/util/Map;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {v1, v0}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    goto :goto_0
.end method
