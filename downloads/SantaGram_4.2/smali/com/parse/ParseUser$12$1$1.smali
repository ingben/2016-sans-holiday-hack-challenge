.class Lcom/parse/ParseUser$12$1$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$12$1;->then(La/j;)La/j;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseUser$12$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$12$1;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

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
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v2, v2, Lcom/parse/ParseUser$12$1;->this$0:Lcom/parse/ParseUser$12;

    iget-object v2, v2, Lcom/parse/ParseUser$12;->val$authType:Ljava/lang/String;

    # invokes: Lcom/parse/ParseUser;->removeAuthData(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$500(Lcom/parse/ParseUser;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v2, v2, Lcom/parse/ParseUser$12$1;->val$oldAnonymousData:Ljava/util/Map;

    # invokes: Lcom/parse/ParseUser;->restoreAnonymity(Ljava/util/Map;)V
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$300(Lcom/parse/ParseUser;Ljava/util/Map;)V

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Exception;)La/j;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La/j;->i()La/j;

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
    iget-object v0, p0, Lcom/parse/ParseUser$12$1$1;->this$1:Lcom/parse/ParseUser$12$1;

    iget-object v0, v0, Lcom/parse/ParseUser$12$1;->val$user:Lcom/parse/ParseUser;

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$12$1$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
