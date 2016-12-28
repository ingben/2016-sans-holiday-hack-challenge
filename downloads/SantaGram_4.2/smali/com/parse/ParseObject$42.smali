.class final Lcom/parse/ParseObject$42;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveAllAsync(Ljava/util/List;Ljava/lang/String;La/j;)La/j;
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

    iput-object p1, p0, Lcom/parse/ParseObject$42;->val$uniqueObjects:Ljava/util/List;

    iput-object p2, p0, Lcom/parse/ParseObject$42;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 9
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

    iget-object v0, p0, Lcom/parse/ParseObject$42;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$42;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->updateBeforeSave()V

    invoke-virtual {v0}, Lcom/parse/ParseObject;->validateSave()V

    invoke-virtual {v0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    # invokes: Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$700(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v0

    new-instance v7, Lcom/parse/KnownParseObjectDecoder;

    invoke-direct {v7, v0}, Lcom/parse/KnownParseObjectDecoder;-><init>(Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    # invokes: Lcom/parse/ParseObject;->getObjectController()Lcom/parse/ParseObjectController;
    invoke-static {}, Lcom/parse/ParseObject;->access$800()Lcom/parse/ParseObjectController;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseObject$42;->val$sessionToken:Ljava/lang/String;

    invoke-interface {v0, v3, v5, v2, v6}, Lcom/parse/ParseObjectController;->saveAllAsync(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_1

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/j;

    iget-object v1, p0, Lcom/parse/ParseObject$42;->val$uniqueObjects:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseOperationSet;

    new-instance v8, Lcom/parse/ParseObject$42$1;

    invoke-direct {v8, p0, v1, v2}, Lcom/parse/ParseObject$42$1;-><init>(Lcom/parse/ParseObject$42;Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v0, v8}, La/j;->b(La/h;)La/j;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-static {v7}, La/j;->a(Ljava/util/Collection;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$42;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
