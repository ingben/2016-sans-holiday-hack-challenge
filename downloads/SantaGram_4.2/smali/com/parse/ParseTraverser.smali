.class abstract Lcom/parse/ParseTraverser;
.super Ljava/lang/Object;


# instance fields
.field private traverseParseObjects:Z

.field private yieldRoot:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/parse/ParseTraverser;->traverseParseObjects:Z

    iput-boolean v0, p0, Lcom/parse/ParseTraverser;->yieldRoot:Z

    return-void
.end method

.method private traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p3, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/parse/ParseTraverser;->visit(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p3, p1, p1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, p3}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/json/JSONArray;

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    :try_start_1
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p3}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, v2, p3}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    goto :goto_3

    :cond_5
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, v2, p3}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    goto :goto_4

    :cond_6
    instance-of v0, p1, Lcom/parse/ParseObject;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/parse/ParseTraverser;->traverseParseObjects:Z

    if-eqz v0, :cond_0

    check-cast p1, Lcom/parse/ParseObject;

    invoke-virtual {p1}, Lcom/parse/ParseObject;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, v2, p3}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    goto :goto_5

    :cond_7
    instance-of v0, p1, Lcom/parse/ParseACL;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/parse/ParseACL;

    invoke-virtual {p1}, Lcom/parse/ParseACL;->getUnresolvedUser()Lcom/parse/ParseUser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v2, p3}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;
    .locals 0

    iput-boolean p1, p0, Lcom/parse/ParseTraverser;->traverseParseObjects:Z

    return-object p0
.end method

.method public setYieldRoot(Z)Lcom/parse/ParseTraverser;
    .locals 0

    iput-boolean p1, p0, Lcom/parse/ParseTraverser;->yieldRoot:Z

    return-object p0
.end method

.method public traverse(Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iget-boolean v1, p0, Lcom/parse/ParseTraverser;->yieldRoot:Z

    invoke-direct {p0, p1, v1, v0}, Lcom/parse/ParseTraverser;->traverseInternal(Ljava/lang/Object;ZLjava/util/IdentityHashMap;)V

    return-void
.end method

.method protected abstract visit(Ljava/lang/Object;)Z
.end method
