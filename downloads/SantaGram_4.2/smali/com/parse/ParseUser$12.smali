.class final Lcom/parse/ParseUser$12;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->logInWithInBackground(Ljava/lang/String;Ljava/util/Map;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$authData:Ljava/util/Map;

.field final synthetic val$authType:Ljava/lang/String;

.field final synthetic val$logInWithTask:La/h;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;La/h;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseUser$12;->val$authType:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseUser$12;->val$authData:Ljava/util/Map;

    iput-object p3, p0, Lcom/parse/ParseUser$12;->val$logInWithTask:La/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lcom/parse/ParseUser;",
            ">;)",
            "La/j",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "anonymous"

    # invokes: Lcom/parse/ParseUser;->getAuthData(Ljava/lang/String;)Ljava/util/Map;
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$400(Lcom/parse/ParseUser;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, v0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v4, Lcom/parse/ParseUser$12$1;

    invoke-direct {v4, p0, v0, v2}, Lcom/parse/ParseUser$12$1;-><init>(Lcom/parse/ParseUser$12;Lcom/parse/ParseUser;Ljava/util/Map;)V

    invoke-virtual {v3, v4}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/parse/ParseUser$12;->val$authType:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseUser$12;->val$authData:Ljava/util/Map;

    invoke-virtual {v0, v2, v3}, Lcom/parse/ParseUser;->linkWithInBackground(Ljava/lang/String;Ljava/util/Map;)La/j;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseUser$12$2;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseUser$12$2;-><init>(Lcom/parse/ParseUser$12;Lcom/parse/ParseUser;)V

    invoke-virtual {v2, v3}, La/j;->b(La/h;)La/j;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseUser$12;->val$logInWithTask:La/h;

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$12;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
