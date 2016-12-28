.class Lcom/parse/CacheQueryController$5;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CacheQueryController;->runCommandWithPolicyAsync(Lcom/parse/CacheQueryController$CommandDelegate;Lcom/parse/ParseQuery$CachePolicy;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<TTResult;",
        "La/j",
        "<TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/CacheQueryController;

.field final synthetic val$c:Lcom/parse/CacheQueryController$CommandDelegate;


# direct methods
.method constructor <init>(Lcom/parse/CacheQueryController;Lcom/parse/CacheQueryController$CommandDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/CacheQueryController$5;->this$0:Lcom/parse/CacheQueryController;

    iput-object p2, p0, Lcom/parse/CacheQueryController$5;->val$c:Lcom/parse/CacheQueryController$CommandDelegate;

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
            "<TTResult;>;)",
            "La/j",
            "<TTResult;>;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/parse/ParseException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/CacheQueryController$5;->val$c:Lcom/parse/CacheQueryController$CommandDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/parse/CacheQueryController$CommandDelegate;->runOnNetworkAsync(Z)La/j;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/CacheQueryController$5;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
