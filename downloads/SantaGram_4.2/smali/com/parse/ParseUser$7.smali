.class Lcom/parse/ParseUser$7;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->signUpAsync(La/j;)La/j;
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
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$anonymousData:Ljava/util/Map;

.field final synthetic val$oldPassword:Ljava/lang/String;

.field final synthetic val$oldUsername:Ljava/lang/String;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseUser$7;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$7;->val$user:Lcom/parse/ParseUser;

    iput-object p3, p0, Lcom/parse/ParseUser$7;->val$oldUsername:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/ParseUser$7;->val$oldPassword:Ljava/lang/String;

    iput-object p5, p0, Lcom/parse/ParseUser$7;->val$anonymousData:Ljava/util/Map;

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
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$user:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$oldUsername:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$7;->val$oldUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/parse/ParseUser;->setUsername(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$oldPassword:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$7;->val$oldPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/parse/ParseUser;->setPassword(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$7;->val$anonymousData:Ljava/util/Map;

    # invokes: Lcom/parse/ParseUser;->restoreAnonymity(Ljava/util/Map;)V
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$300(Lcom/parse/ParseUser;Ljava/util/Map;)V

    monitor-exit v1

    :goto_2
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$user:Lcom/parse/ParseUser;

    const-string v2, "username"

    invoke-virtual {v0, v2}, Lcom/parse/ParseUser;->revert(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$user:Lcom/parse/ParseUser;

    const-string v2, "password"

    invoke-virtual {v0, v2}, Lcom/parse/ParseUser;->revert(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/parse/ParseUser$7;->val$user:Lcom/parse/ParseUser;

    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->revert(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/parse/ParseUser$7;->this$0:Lcom/parse/ParseUser;

    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->revert(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/parse/ParseUser$7;->this$0:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/parse/ParseUser$7;->val$user:Lcom/parse/ParseUser;

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->mergeFromObject(Lcom/parse/ParseObject;)V

    iget-object v0, p0, Lcom/parse/ParseUser$7;->this$0:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)La/j;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$200(Lcom/parse/ParseUser;)La/j;

    move-result-object p1

    goto :goto_2
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$7;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
