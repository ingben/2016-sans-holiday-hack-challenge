.class Lcom/parse/ParseUser$13;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->synchronizeAuthDataAsync(Lcom/parse/ParseAuthenticationManager;Ljava/lang/String;Ljava/util/Map;)La/j;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseUser$13;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$13;->val$authType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseUser$13;->this$0:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/parse/ParseUser$13;->val$authType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->unlinkFromInBackground(Ljava/lang/String;)La/j;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, La/j;->k()La/j;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$13;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
