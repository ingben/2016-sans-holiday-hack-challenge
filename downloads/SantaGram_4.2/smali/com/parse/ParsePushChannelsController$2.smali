.class Lcom/parse/ParsePushChannelsController$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePushChannelsController;->unsubscribeInBackground(Ljava/lang/String;)La/j;
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
        "Lcom/parse/ParseInstallation;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePushChannelsController;

.field final synthetic val$channel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParsePushChannelsController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParsePushChannelsController$2;->this$0:Lcom/parse/ParsePushChannelsController;

    iput-object p2, p0, Lcom/parse/ParsePushChannelsController$2;->val$channel:Ljava/lang/String;

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
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseInstallation;

    const-string v1, "channels"

    invoke-virtual {v0, v1}, Lcom/parse/ParseInstallation;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/parse/ParsePushChannelsController$2;->val$channel:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "channels"

    iget-object v2, p0, Lcom/parse/ParsePushChannelsController$2;->val$channel:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseInstallation;->removeAll(Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveInBackground()La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParsePushChannelsController$2;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
