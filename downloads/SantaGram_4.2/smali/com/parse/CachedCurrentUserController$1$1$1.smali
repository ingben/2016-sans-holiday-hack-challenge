.class Lcom/parse/CachedCurrentUserController$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CachedCurrentUserController$1$1;->then(La/j;)La/j;
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
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/CachedCurrentUserController$1$1;


# direct methods
.method constructor <init>(Lcom/parse/CachedCurrentUserController$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/CachedCurrentUserController$1$1$1;->this$2:Lcom/parse/CachedCurrentUserController$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/CachedCurrentUserController$1$1$1;->then(La/j;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(La/j;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$1$1$1;->this$2:Lcom/parse/CachedCurrentUserController$1$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1$1;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1;->this$0:Lcom/parse/CachedCurrentUserController;

    # getter for: Lcom/parse/CachedCurrentUserController;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/CachedCurrentUserController;->access$000(Lcom/parse/CachedCurrentUserController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$1$1$1;->this$2:Lcom/parse/CachedCurrentUserController$1$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1$1;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v2, v0, Lcom/parse/CachedCurrentUserController$1;->this$0:Lcom/parse/CachedCurrentUserController;

    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/parse/CachedCurrentUserController;->currentUserMatchesDisk:Z

    iget-object v0, p0, Lcom/parse/CachedCurrentUserController$1$1$1;->this$2:Lcom/parse/CachedCurrentUserController$1$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1$1;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v0, v0, Lcom/parse/CachedCurrentUserController$1;->this$0:Lcom/parse/CachedCurrentUserController;

    iget-object v2, p0, Lcom/parse/CachedCurrentUserController$1$1$1;->this$2:Lcom/parse/CachedCurrentUserController$1$1;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$1$1;->this$1:Lcom/parse/CachedCurrentUserController$1;

    iget-object v2, v2, Lcom/parse/CachedCurrentUserController$1;->val$user:Lcom/parse/ParseUser;

    iput-object v2, v0, Lcom/parse/CachedCurrentUserController;->currentUser:Lcom/parse/ParseUser;

    monitor-exit v1

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
