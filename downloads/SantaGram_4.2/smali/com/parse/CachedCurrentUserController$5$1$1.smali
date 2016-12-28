.class Lcom/parse/CachedCurrentUserController$5$1$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController$5$1;->then(La/j;)La/j;
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
        "Lcom/parse/ParseUser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/CachedCurrentUserController$5$1;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController$5$1;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$5$1$1;->this$2:Lcom/parse/CachedCurrentUserController$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Lcom/parse/ParseUser;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lcom/parse/ParseUser;",
            ">;)",
            "Lcom/parse/ParseUser;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    invoke-virtual {p1}, La/j;->e()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$5$1$1;->this$2:Lcom/parse/CachedCurrentUserController$5$1;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    # getter for: Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/CachedCurrentUserController;->access$000(Lcom/parse/CachedCurrentUserController;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/parse/CachedCurrentUserController$5$1$1;->this$2:Lcom/parse/CachedCurrentUserController$5$1;

    iget-object v3, v3, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v3, v3, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    iput-object v0, v3, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    iget-object v3, p0, Lcom/parse/CachedCurrentUserController$5$1$1;->this$2:Lcom/parse/CachedCurrentUserController$5$1;

    iget-object v3, v3, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v3, v3, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    iput-boolean v1, v3, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/parse/ParseUser;->setIsCurrentUser(Z)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$5$1$1;->this$2:Lcom/parse/CachedCurrentUserController$5$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-boolean v0, v0, Lcom/parse/CachedCurrentUserController$5;->val$shouldAutoCreateUser:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$5$1$1;->this$2:Lcom/parse/CachedCurrentUserController$5$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$5$1;->this$1:Lcom/parse/CachedCurrentUserController$5;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$5;->this$0:Lcom/parse/CachedCurrentUserController;

    # invokes: Lcom/parse/CachedCurrentUserController;->lazyLogIn()Lcom/parse/ParseUser;
    invoke-static {v0}, Lcom/parse/CachedCurrentUserController;->access$200(Lcom/parse/CachedCurrentUserController;)Lcom/parse/ParseUser;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$5$1$1;->then(La/j;)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method
