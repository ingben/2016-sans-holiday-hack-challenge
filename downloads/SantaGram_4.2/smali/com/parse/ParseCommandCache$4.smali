.class Lcom/parse/ParseCommandCache$4;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommandCache;->maybeRunAllCommandsNow(I)V
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
        "Lorg/json/JSONObject;",
        "La/j",
        "<",
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommandCache;

.field final synthetic val$command:Lcom/parse/ParseRESTCommand;

.field final synthetic val$tcs:La/k;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommandCache;Lcom/parse/ParseRESTCommand;La/k;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseCommandCache$4;->this$0:Lcom/parse/ParseCommandCache;

    iput-object p2, p0, Lcom/parse/ParseCommandCache$4;->val$command:Lcom/parse/ParseRESTCommand;

    iput-object p3, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:La/k;

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
            "Lorg/json/JSONObject;",
            ">;)",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseCommandCache$4;->val$command:Lcom/parse/ParseRESTCommand;

    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->getLocalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v0, v1, Lcom/parse/ParseException;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/parse/ParseException;

    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:La/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:La/k;

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:La/k;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/parse/ParseCommandCache$4;->val$tcs:La/k;

    invoke-virtual {v1, v0}, La/k;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    const-string v1, "objectId"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseCorePlugins;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/parse/LocalIdManager;->setObjectId(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseCommandCache$4;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
