.class Lcom/parse/ParseQuery$State;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseQuery$State$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

.field private final className:Ljava/lang/String;

.field private final extraOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final ignoreACLs:Z

.field private final include:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final isFromLocalDatastore:Z

.field private final limit:I

.field private final maxCacheAge:J

.field private final order:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pinName:Ljava/lang/String;

.field private final selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final skip:I

.field private final trace:Z

.field private final where:Lcom/parse/ParseQuery$QueryConstraints;


# direct methods
.method private constructor <init>(Lcom/parse/ParseQuery$State$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$400(Lcom/parse/ParseQuery$State$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery$State;->className:Ljava/lang/String;

    new-instance v0, Lcom/parse/ParseQuery$QueryConstraints;

    # getter for: Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$500(Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery$QueryConstraints;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/parse/ParseQuery$State;->where:Lcom/parse/ParseQuery$QueryConstraints;

    new-instance v0, Ljava/util/HashSet;

    # getter for: Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$600(Lcom/parse/ParseQuery$State$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery$State;->include:Ljava/util/Set;

    # getter for: Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$700(Lcom/parse/ParseQuery$State$Builder;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    # getter for: Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$700(Lcom/parse/ParseQuery$State$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/parse/ParseQuery$State;->selectedKeys:Ljava/util/Set;

    # getter for: Lcom/parse/ParseQuery$State$Builder;->limit:I
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$800(Lcom/parse/ParseQuery$State$Builder;)I

    move-result v0

    iput v0, p0, Lcom/parse/ParseQuery$State;->limit:I

    # getter for: Lcom/parse/ParseQuery$State$Builder;->skip:I
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$900(Lcom/parse/ParseQuery$State$Builder;)I

    move-result v0

    iput v0, p0, Lcom/parse/ParseQuery$State;->skip:I

    new-instance v0, Ljava/util/ArrayList;

    # getter for: Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$1000(Lcom/parse/ParseQuery$State$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery$State;->order:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    # getter for: Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$1100(Lcom/parse/ParseQuery$State$Builder;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery$State;->extraOptions:Ljava/util/Map;

    # getter for: Lcom/parse/ParseQuery$State$Builder;->trace:Z
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$1200(Lcom/parse/ParseQuery$State$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State;->trace:Z

    # getter for: Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$1300(Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery$State;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    # getter for: Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$1400(Lcom/parse/ParseQuery$State$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseQuery$State;->maxCacheAge:J

    # getter for: Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$1500(Lcom/parse/ParseQuery$State$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State;->isFromLocalDatastore:Z

    # getter for: Lcom/parse/ParseQuery$State$Builder;->pinName:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$1600(Lcom/parse/ParseQuery$State$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery$State;->pinName:Ljava/lang/String;

    # getter for: Lcom/parse/ParseQuery$State$Builder;->ignoreACLs:Z
    invoke-static {p1}, Lcom/parse/ParseQuery$State$Builder;->access$1700(Lcom/parse/ParseQuery$State$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State;->ignoreACLs:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/parse/ParseQuery$State$Builder;Lcom/parse/ParseQuery$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/parse/ParseQuery$State;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    return-void
.end method


# virtual methods
.method public cachePolicy()Lcom/parse/ParseQuery$CachePolicy;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseQuery$State;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    return-object v0
.end method

.method public className()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseQuery$State;->className:Ljava/lang/String;

    return-object v0
.end method

.method public constraints()Lcom/parse/ParseQuery$QueryConstraints;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseQuery$State;->where:Lcom/parse/ParseQuery$QueryConstraints;

    return-object v0
.end method

.method public extraOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$State;->extraOptions:Ljava/util/Map;

    return-object v0
.end method

.method public ignoreACLs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/ParseQuery$State;->ignoreACLs:Z

    return v0
.end method

.method public includes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$State;->include:Ljava/util/Set;

    return-object v0
.end method

.method public isFromLocalDatastore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/ParseQuery$State;->isFromLocalDatastore:Z

    return v0
.end method

.method public isTracingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/ParseQuery$State;->trace:Z

    return v0
.end method

.method public limit()I
    .locals 1

    iget v0, p0, Lcom/parse/ParseQuery$State;->limit:I

    return v0
.end method

.method public maxCacheAge()J
    .locals 2

    iget-wide v0, p0, Lcom/parse/ParseQuery$State;->maxCacheAge:J

    return-wide v0
.end method

.method public order()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$State;->order:Ljava/util/List;

    return-object v0
.end method

.method public pinName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseQuery$State;->pinName:Ljava/lang/String;

    return-object v0
.end method

.method public selectedKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$State;->selectedKeys:Ljava/util/Set;

    return-object v0
.end method

.method public skip()I
    .locals 1

    iget v0, p0, Lcom/parse/ParseQuery$State;->skip:I

    return v0
.end method

.method toJSON(Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "className"

    iget-object v2, p0, Lcom/parse/ParseQuery$State;->className:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "where"

    iget-object v2, p0, Lcom/parse/ParseQuery$State;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {p1, v2}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget v0, p0, Lcom/parse/ParseQuery$State;->limit:I

    if-ltz v0, :cond_0

    const-string v0, "limit"

    iget v2, p0, Lcom/parse/ParseQuery$State;->limit:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    iget v0, p0, Lcom/parse/ParseQuery$State;->skip:I

    if-lez v0, :cond_1

    const-string v0, "skip"

    iget v2, p0, Lcom/parse/ParseQuery$State;->skip:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseQuery$State;->order:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "order"

    const-string v2, ","

    iget-object v3, p0, Lcom/parse/ParseQuery$State;->order:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/parse/ParseTextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v0, p0, Lcom/parse/ParseQuery$State;->include:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "include"

    const-string v2, ","

    iget-object v3, p0, Lcom/parse/ParseQuery$State;->include:Ljava/util/Set;

    invoke-static {v2, v3}, Lcom/parse/ParseTextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    iget-object v0, p0, Lcom/parse/ParseQuery$State;->selectedKeys:Ljava/util/Set;

    if-eqz v0, :cond_4

    const-string v0, "fields"

    const-string v2, ","

    iget-object v3, p0, Lcom/parse/ParseQuery$State;->selectedKeys:Ljava/util/Set;

    invoke-static {v2, v3}, Lcom/parse/ParseTextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget-boolean v0, p0, Lcom/parse/ParseQuery$State;->trace:Z

    if-eqz v0, :cond_5

    const-string v0, "trace"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    iget-object v0, p0, Lcom/parse/ParseQuery$State;->extraOptions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseQuery$State;->extraOptions:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s[className=%s, where=%s, include=%s, selectedKeys=%s, limit=%s, skip=%s, order=%s, extraOptions=%s, cachePolicy=%s, maxCacheAge=%s, trace=%s]"

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/parse/ParseQuery$State;->className:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/parse/ParseQuery$State;->where:Lcom/parse/ParseQuery$QueryConstraints;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/parse/ParseQuery$State;->include:Ljava/util/Set;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/parse/ParseQuery$State;->selectedKeys:Ljava/util/Set;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lcom/parse/ParseQuery$State;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget v4, p0, Lcom/parse/ParseQuery$State;->skip:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/parse/ParseQuery$State;->order:Ljava/util/List;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/parse/ParseQuery$State;->extraOptions:Ljava/util/Map;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/parse/ParseQuery$State;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    iget-wide v4, p0, Lcom/parse/ParseQuery$State;->maxCacheAge:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    iget-boolean v4, p0, Lcom/parse/ParseQuery$State;->trace:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
