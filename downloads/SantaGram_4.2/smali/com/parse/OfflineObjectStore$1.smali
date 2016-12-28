.class final Lcom/parse/OfflineObjectStore$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineObjectStore;->migrate(Lcom/parse/ParseObjectStore;Lcom/parse/ParseObjectStore;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<TT;",
        "La/j",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$from:Lcom/parse/ParseObjectStore;

.field final synthetic val$to:Lcom/parse/ParseObjectStore;


# direct methods
.method constructor <init>(Lcom/parse/ParseObjectStore;Lcom/parse/ParseObjectStore;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineObjectStore$1;->val$from:Lcom/parse/ParseObjectStore;

    iput-object p2, p0, Lcom/parse/OfflineObjectStore$1;->val$to:Lcom/parse/ParseObjectStore;

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
            "<TT;>;)",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [La/j;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/OfflineObjectStore$1;->val$from:Lcom/parse/ParseObjectStore;

    invoke-interface {v3}, Lcom/parse/ParseObjectStore;->deleteAsync()La/j;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/parse/OfflineObjectStore$1;->val$to:Lcom/parse/ParseObjectStore;

    invoke-interface {v3, v0}, Lcom/parse/ParseObjectStore;->setAsync(Lcom/parse/ParseObject;)La/j;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, La/j;->a(Ljava/util/Collection;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineObjectStore$1$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineObjectStore$1$1;-><init>(Lcom/parse/OfflineObjectStore$1;Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, La/j;->a(La/h;)La/j;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineObjectStore$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
