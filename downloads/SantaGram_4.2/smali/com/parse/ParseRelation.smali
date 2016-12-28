.class public Lcom/parse/ParseRelation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private knownObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mutex:Ljava/lang/Object;

.field private parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private parentClassName:Ljava/lang/String;

.field private parentObjectId:Ljava/lang/String;

.field private targetClass:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    iput-object v1, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    iput-object v1, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    iput-object v1, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    iput-object p1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    iput-object v1, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    iput-object v1, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    iput-object v1, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    iput-object v1, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    const-string v0, "className"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    const-string v0, "objects"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/parse/ParseObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/parse/ParseRelationOperation;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/parse/ParseRelationOperation;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v0}, Lcom/parse/ParseRelationOperation;->getTargetClass()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/parse/ParseRelation;->getParent()Lcom/parse/ParseObject;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addKnownObject(Lcom/parse/ParseObject;)V
    .locals 2

    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method encodeToJSON(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 5

    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "__type"

    const-string v3, "Relation"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "className"

    iget-object v3, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/parse/ParseEncoder;->encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    const-string v0, "objects"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Internal error. One ParseRelation retrieved from two different ParseObjects."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Internal error. One ParseRelation retrieved from two different keys."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    return-object v0
.end method

.method getKnownObjects()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    return-object v0
.end method

.method getParent()Lcom/parse/ParseObject;
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    iget-object v1, p0, Lcom/parse/ParseRelation;->parentObjectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRelation;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method public getQuery()Lcom/parse/ParseQuery;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/parse/ParseQuery$State$Builder;

    iget-object v2, p0, Lcom/parse/ParseRelation;->parentClassName:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/parse/ParseQuery$State$Builder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/parse/ParseQuery$State$Builder;->redirectClassNameForKey(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/parse/ParseRelation;->getParent()Lcom/parse/ParseObject;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/parse/ParseQuery$State$Builder;->whereRelatedTo(Lcom/parse/ParseObject;Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    new-instance v2, Lcom/parse/ParseQuery;

    invoke-direct {v2, v0}, Lcom/parse/ParseQuery;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    monitor-exit v1

    return-object v2

    :cond_0
    new-instance v0, Lcom/parse/ParseQuery$State$Builder;

    iget-object v2, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/parse/ParseQuery$State$Builder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getTargetClass()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasKnownObject(Lcom/parse/ParseObject;)Z
    .locals 2

    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Lcom/parse/ParseObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/parse/ParseRelationOperation;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/parse/ParseRelationOperation;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v0}, Lcom/parse/ParseRelationOperation;->getTargetClass()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/parse/ParseRelation;->getParent()Lcom/parse/ParseObject;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseRelation;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeKnownObject(Lcom/parse/ParseObject;)V
    .locals 2

    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRelation;->knownObjects:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setTargetClass(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/parse/ParseRelation;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/parse/ParseRelation;->targetClass:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
