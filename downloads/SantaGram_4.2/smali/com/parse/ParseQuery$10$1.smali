.class Lcom/parse/ParseQuery$10$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$10;->call()La/j;
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
        "<TTResult;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/ParseQuery$10;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$10;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

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
            "<TTResult;>;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    new-instance v1, Lcom/parse/ParseQuery$State$Builder;

    iget-object v2, p0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v2, v2, Lcom/parse/ParseQuery$10;->val$state:Lcom/parse/ParseQuery$State;

    invoke-direct {v1, v2}, Lcom/parse/ParseQuery$State$Builder;-><init>(Lcom/parse/ParseQuery$State;)V

    sget-object v2, Lcom/parse/ParseQuery$CachePolicy;->CACHE_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery$State$Builder;->setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseQuery$State$Builder;

    iget-object v3, p0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v3, v3, Lcom/parse/ParseQuery$10;->val$state:Lcom/parse/ParseQuery$State;

    invoke-direct {v2, v3}, Lcom/parse/ParseQuery$State$Builder;-><init>(Lcom/parse/ParseQuery$State;)V

    sget-object v3, Lcom/parse/ParseQuery$CachePolicy;->NETWORK_ONLY:Lcom/parse/ParseQuery$CachePolicy;

    invoke-virtual {v2, v3}, Lcom/parse/ParseQuery$State$Builder;->setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v3, v3, Lcom/parse/ParseQuery$10;->val$delegate:Lcom/parse/ParseQuery$CacheThenNetworkCallable;

    iget-object v4, p0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v4, v4, Lcom/parse/ParseQuery$10;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->cts:La/k;
    invoke-static {v4}, Lcom/parse/ParseQuery;->access$2000(Lcom/parse/ParseQuery;)La/k;

    move-result-object v4

    invoke-virtual {v4}, La/k;->a()La/j;

    move-result-object v4

    invoke-interface {v3, v1, v0, v4}, Lcom/parse/ParseQuery$CacheThenNetworkCallable;->call(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La/j;

    iget-object v3, p0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v3, v3, Lcom/parse/ParseQuery$10;->val$callback:Lcom/parse/ParseCallback2;

    invoke-static {v1, v3}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;)La/j;

    move-result-object v1

    new-instance v3, Lcom/parse/ParseQuery$10$1$1;

    invoke-direct {v3, p0, v2, v0}, Lcom/parse/ParseQuery$10$1$1;-><init>(Lcom/parse/ParseQuery$10$1;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)V

    invoke-virtual {v1, v3}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$10$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
