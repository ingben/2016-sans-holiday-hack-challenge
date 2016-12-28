.class Lcom/parse/ParseQuery$State$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseQuery$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
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
.field private cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

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

.field private ignoreACLs:Z

.field private final includes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFromLocalDatastore:Z

.field private limit:I

.field private maxCacheAge:J

.field private order:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pinName:Ljava/lang/String;

.field private selectedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private skip:I

.field private trace:Z

.field private final where:Lcom/parse/ParseQuery$QueryConstraints;


# direct methods
.method public constructor <init>(Lcom/parse/ParseQuery$State$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/parse/ParseQuery$QueryConstraints;

    invoke-direct {v0}, Lcom/parse/ParseQuery$QueryConstraints;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    iput v2, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    sget-object v0, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    iput-boolean v2, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    iget-object v0, p1, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    iget-object v1, p1, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery$QueryConstraints;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    iget-object v1, p1, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    iget v0, p1, Lcom/parse/ParseQuery$State$Builder;->limit:I

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    iget v0, p1, Lcom/parse/ParseQuery$State$Builder;->skip:I

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    iget-object v1, p1, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    iget-object v1, p1, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-boolean v0, p1, Lcom/parse/ParseQuery$State$Builder;->trace:Z

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->trace:Z

    iget-object v0, p1, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    iget-wide v0, p1, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    iput-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    iget-boolean v0, p1, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    iget-object v0, p1, Lcom/parse/ParseQuery$State$Builder;->pinName:Ljava/lang/String;

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->pinName:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs:Z

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/parse/ParseQuery$State;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/parse/ParseQuery$QueryConstraints;

    invoke-direct {v0}, Lcom/parse/ParseQuery$QueryConstraints;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    iput v2, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    sget-object v0, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    iput-boolean v2, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->className()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->constraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery$QueryConstraints;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->includes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->selectedKeys()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->limit()I

    move-result v0

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->skip()I

    move-result v0

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->order()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->extraOptions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->isTracingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->trace:Z

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->maxCacheAge()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->pinName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->pinName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->ignoreACLs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    # invokes: Lcom/parse/ParseQuery;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;
    invoke-static {}, Lcom/parse/ParseQuery;->access$000()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery$State$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/parse/ParseQuery$QueryConstraints;

    invoke-direct {v0}, Lcom/parse/ParseQuery$QueryConstraints;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    iput v2, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    sget-object v0, Lcom/parse/ParseQuery$CachePolicy;->IGNORE_CACHE:Lcom/parse/ParseQuery$CachePolicy;

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    iput-boolean v2, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    iput-object p1, p0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/parse/ParseQuery$State$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/ParseQuery$State$Builder;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parse/ParseQuery$State$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->trace:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$CachePolicy;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parse/ParseQuery$State$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/parse/ParseQuery$State$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/parse/ParseQuery$State$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->pinName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parse/ParseQuery$State$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs:Z

    return v0
.end method

.method static synthetic access$400(Lcom/parse/ParseQuery$State$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$QueryConstraints;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParseQuery$State$Builder;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParseQuery$State$Builder;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParseQuery$State$Builder;)I
    .locals 1

    iget v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    return v0
.end method

.method static synthetic access$900(Lcom/parse/ParseQuery$State$Builder;)I
    .locals 1

    iget v0, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    return v0
.end method

.method private addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$QueryConstraints;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/parse/ParseQuery$KeyConstraints;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/parse/ParseQuery$KeyConstraints;

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lcom/parse/ParseQuery$KeyConstraints;

    invoke-direct {v0}, Lcom/parse/ParseQuery$KeyConstraints;-><init>()V

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/parse/ParseQuery$KeyConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v1, p1, v0}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private addOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static or(Ljava/util/List;)Lcom/parse/ParseQuery$State$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;>;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t take an or of an empty list of queries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQuery$State$Builder;

    if-eqz v1, :cond_1

    iget-object v4, v0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "All of the queries in an or query must be on the same class "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v1, v0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    if-ltz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have limits in sub queries of an \'OR\' query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, v0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    if-lez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have skips in sub queries of an \'OR\' query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, v0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an order in sub queries of an \'OR\' query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v1, v0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an include in sub queries of an \'OR\' query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v1, v0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot have an selectKeys in sub queries of an \'OR\' query"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v1, v0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    iget-object v0, v0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    new-instance v0, Lcom/parse/ParseQuery$State$Builder;

    invoke-direct {v0, v1}, Lcom/parse/ParseQuery$State$Builder;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/parse/ParseQuery$State$Builder;->whereSatifiesAnyOf(Ljava/util/List;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method private setOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->order:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private whereSatifiesAnyOf(Ljava/util/List;)Lcom/parse/ParseQuery$State$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery$QueryConstraints;",
            ">;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v1, "$or"

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/parse/ParseQuery$State$Builder;->addOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseQuery$State$Builder;->addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseQuery$State$Builder;->addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "-%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery$State$Builder;->addOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/parse/ParseQuery$State;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`ignoreACLs` cannot be combined with network queries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/parse/ParseQuery$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/ParseQuery$State;-><init>(Lcom/parse/ParseQuery$State$Builder;Lcom/parse/ParseQuery$1;)V

    return-object v0
.end method

.method public fromLocalDatastore()Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery$State$Builder;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public fromNetwork()Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    # invokes: Lcom/parse/ParseQuery;->throwIfLDSDisabled()V
    invoke-static {}, Lcom/parse/ParseQuery;->access$200()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->pinName:Ljava/lang/String;

    return-object p0
.end method

.method public fromPin()Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "_default"

    invoke-virtual {p0, v0}, Lcom/parse/ParseQuery$State$Builder;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    # invokes: Lcom/parse/ParseQuery;->throwIfLDSDisabled()V
    invoke-static {}, Lcom/parse/ParseQuery;->access$200()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    iput-object p1, p0, Lcom/parse/ParseQuery$State$Builder;->pinName:Ljava/lang/String;

    return-object p0
.end method

.method public getCachePolicy()Lcom/parse/ParseQuery$CachePolicy;
    .locals 1

    # invokes: Lcom/parse/ParseQuery;->throwIfLDSEnabled()V
    invoke-static {}, Lcom/parse/ParseQuery;->access$100()V

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    return v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    # invokes: Lcom/parse/ParseQuery;->throwIfLDSEnabled()V
    invoke-static {}, Lcom/parse/ParseQuery;->access$100()V

    iget-wide v0, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    return-wide v0
.end method

.method public getSkip()I
    .locals 1

    iget v0, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    return v0
.end method

.method public ignoreACLs()Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    # invokes: Lcom/parse/ParseQuery;->throwIfLDSDisabled()V
    invoke-static {}, Lcom/parse/ParseQuery;->access$200()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs:Z

    return-object p0
.end method

.method public include(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->includes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public isFromLocalDatstore()Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    return v0
.end method

.method public isFromNetwork()Z
    .locals 1

    # invokes: Lcom/parse/ParseQuery;->throwIfLDSDisabled()V
    invoke-static {}, Lcom/parse/ParseQuery;->access$200()V

    iget-boolean v0, p0, Lcom/parse/ParseQuery$State$Builder;->isFromLocalDatastore:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxDistance(Ljava/lang/String;D)Lcom/parse/ParseQuery$State$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "$maxDistance"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/parse/ParseQuery$State$Builder;->setOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "-%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery$State$Builder;->setOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method redirectClassNameForKey(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->extraOptions:Ljava/util/Map;

    const-string v1, "redirectClassNameForKey"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public selectKeys(Ljava/util/Collection;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->selectedKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/ParseQuery$State$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    # invokes: Lcom/parse/ParseQuery;->throwIfLDSEnabled()V
    invoke-static {}, Lcom/parse/ParseQuery;->access$100()V

    iput-object p1, p0, Lcom/parse/ParseQuery$State$Builder;->cachePolicy:Lcom/parse/ParseQuery$CachePolicy;

    return-object p0
.end method

.method public setLimit(I)Lcom/parse/ParseQuery$State$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/parse/ParseQuery$State$Builder;->limit:I

    return-object p0
.end method

.method public setMaxCacheAge(J)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    # invokes: Lcom/parse/ParseQuery;->throwIfLDSEnabled()V
    invoke-static {}, Lcom/parse/ParseQuery;->access$100()V

    iput-wide p1, p0, Lcom/parse/ParseQuery$State$Builder;->maxCacheAge:J

    return-object p0
.end method

.method public setSkip(I)Lcom/parse/ParseQuery$State$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    iput p1, p0, Lcom/parse/ParseQuery$State$Builder;->skip:I

    return-object p0
.end method

.method public setTracingEnabled(Z)Lcom/parse/ParseQuery$State$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/parse/ParseQuery$State$Builder;->trace:Z

    return-object p0
.end method

.method public whereDoesNotMatchKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$State$Builder",
            "<*>;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "query"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "$dontSelect"

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/parse/ParseQuery$State$Builder;->addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whereDoesNotMatchQuery(Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$State$Builder",
            "<*>;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "$notInQuery"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery$State$Builder;->addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whereMatchesKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$State$Builder",
            "<*>;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "key"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "query"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "$select"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcom/parse/ParseQuery$State$Builder;->addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$State$Builder",
            "<*>;)",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "$inQuery"

    invoke-direct {p0, p1, v0, p2}, Lcom/parse/ParseQuery$State$Builder;->addConditionInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whereNear(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    const-string v0, "$nearSphere"

    invoke-virtual {p0, p1, v0, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method whereObjectIdEquals(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$QueryConstraints;->clear()V

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v1, "objectId"

    invoke-virtual {v0, v1, p1}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method whereRelatedTo(Lcom/parse/ParseObject;Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseQuery$State$Builder;->where:Lcom/parse/ParseQuery$QueryConstraints;

    const-string v1, "$relatedTo"

    new-instance v2, Lcom/parse/ParseQuery$RelationConstraint;

    invoke-direct {v2, p2, p1}, Lcom/parse/ParseQuery$RelationConstraint;-><init>(Ljava/lang/String;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseQuery$QueryConstraints;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public whereWithin(Ljava/lang/String;Lcom/parse/ParseGeoPoint;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery$State$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "Lcom/parse/ParseGeoPoint;",
            ")",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "$box"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "$within"

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    return-object v0
.end method
