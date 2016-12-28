.class Lcom/parse/ParseObject$10;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveInBackground()La/j;
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
        "La/j",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$10;->this$0:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lcom/parse/ParseUser;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    if-nez v0, :cond_0

    invoke-static {v3}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject$10;->this$0:Lcom/parse/ParseObject;

    const-string v1, "ACL"

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/parse/ParseObject$10;->this$0:Lcom/parse/ParseObject;

    const/4 v1, 0x0

    # invokes: Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;
    invoke-static {v0, v1}, Lcom/parse/ParseObject;->access$600(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {v3}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/parse/ParseACL;->getUnresolvedUser()Lcom/parse/ParseUser;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-static {v3}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v3}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;)La/j;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$10$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/parse/ParseObject$10$1;-><init>(Lcom/parse/ParseObject$10;Lcom/parse/ParseACL;Lcom/parse/ParseUser;)V

    invoke-virtual {v2, v3}, La/j;->c(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$10;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
