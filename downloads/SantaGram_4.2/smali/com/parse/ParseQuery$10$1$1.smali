.class Lcom/parse/ParseQuery$10$1$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery$10$1;->then(La/j;)La/j;
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
.field final synthetic this$2:Lcom/parse/ParseQuery$10$1;

.field final synthetic val$networkState:Lcom/parse/ParseQuery$State;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$10$1;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseQuery$10$1$1;->this$2:Lcom/parse/ParseQuery$10$1;

    iput-object p2, p0, Lcom/parse/ParseQuery$10$1$1;->val$networkState:Lcom/parse/ParseQuery$State;

    iput-object p3, p0, Lcom/parse/ParseQuery$10$1$1;->val$user:Lcom/parse/ParseUser;

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
            "<TTResult;>;)",
            "La/j",
            "<TTResult;>;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery$10$1$1;->this$2:Lcom/parse/ParseQuery$10$1;

    iget-object v0, v0, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v0, v0, Lcom/parse/ParseQuery$10;->val$delegate:Lcom/parse/ParseQuery$CacheThenNetworkCallable;

    iget-object v1, p0, Lcom/parse/ParseQuery$10$1$1;->val$networkState:Lcom/parse/ParseQuery$State;

    iget-object v2, p0, Lcom/parse/ParseQuery$10$1$1;->val$user:Lcom/parse/ParseUser;

    iget-object v3, p0, Lcom/parse/ParseQuery$10$1$1;->this$2:Lcom/parse/ParseQuery$10$1;

    iget-object v3, v3, Lcom/parse/ParseQuery$10$1;->this$1:Lcom/parse/ParseQuery$10;

    iget-object v3, v3, Lcom/parse/ParseQuery$10;->this$0:Lcom/parse/ParseQuery;

    # getter for: Lcom/parse/ParseQuery;->cts:La/k;
    invoke-static {v3}, Lcom/parse/ParseQuery;->access$2000(Lcom/parse/ParseQuery;)La/k;

    move-result-object v3

    invoke-virtual {v3}, La/k;->a()La/j;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/parse/ParseQuery$CacheThenNetworkCallable;->call(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;La/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/j;

    move-object p1, v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$10$1$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
