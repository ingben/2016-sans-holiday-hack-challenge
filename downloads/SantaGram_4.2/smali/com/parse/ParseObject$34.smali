.class final Lcom/parse/ParseObject$34;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;La/j;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$sessionToken:Ljava/lang/String;

.field final synthetic val$uniqueObjects:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$34;->val$uniqueObjects:Ljava/util/List;

    iput-object p2, p0, Lcom/parse/ParseObject$34;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 7
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

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/parse/ParseObject$34;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$34;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->validateDelete()V

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    # invokes: Lcom/parse/ParseObject;->getObjectController()Lcom/parse/ParseObjectController;
    invoke-static {}, Lcom/parse/ParseObject;->access$800()Lcom/parse/ParseObjectController;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseObject$34;->val$sessionToken:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Lcom/parse/ParseObjectController;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/j;

    iget-object v1, p0, Lcom/parse/ParseObject$34;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    new-instance v6, Lcom/parse/ParseObject$34$1;

    invoke-direct {v6, p0, v1}, Lcom/parse/ParseObject$34$1;-><init>(Lcom/parse/ParseObject$34;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v6}, La/j;->d(La/h;)La/j;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-static {v5}, La/j;->a(Ljava/util/Collection;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$34;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
