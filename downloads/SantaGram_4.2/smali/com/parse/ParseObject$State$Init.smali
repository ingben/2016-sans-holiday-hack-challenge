.class abstract Lcom/parse/ParseObject$State$Init;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseObject$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Init"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject$State$Init;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private createdAt:J

.field private isComplete:Z

.field private objectId:Ljava/lang/String;

.field serverData:Ljava/util/Map;
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

.field private updatedAt:J


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$State;)V
    .locals 4

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject$State$Init;->className:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject$State$Init;->objectId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    iput-object p1, p0, Lcom/parse/ParseObject$State$Init;->className:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseObject$State$Init;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseObject$State$Init;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseObject$State$Init;)J
    .locals 2

    iget-wide v0, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/parse/ParseObject$State$Init;)J
    .locals 2

    iget-wide v0, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/parse/ParseObject$State$Init;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    return v0
.end method


# virtual methods
.method public apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject$State$Init;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            ")TT;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject$State$Init;->objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->createdAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseObject$State$Init;->createdAt(J)Lcom/parse/ParseObject$State$Init;

    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->updatedAt()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseObject$State$Init;->updatedAt(J)Lcom/parse/ParseObject$State$Init;

    :cond_2
    iget-boolean v0, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lcom/parse/ParseOperationSet;)Lcom/parse/ParseObject$State$Init;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFieldOperation;

    iget-object v3, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseObject$State$Init;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/parse/ParseObject$State$Init;->remove(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method abstract build()Lcom/parse/ParseObject$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/parse/ParseObject$State;",
            ">()TS;"
        }
    .end annotation
.end method

.method public clear()Lcom/parse/ParseObject$State$Init;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseObject$State$Init;->objectId:Ljava/lang/String;

    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    iput-wide v2, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public createdAt(J)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    iput-wide p1, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public createdAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->createdAt:J

    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public isComplete(Z)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/parse/ParseObject$State$Init;->isComplete:Z

    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public objectId(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Lcom/parse/ParseObject$State$Init;->objectId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseObject$State$Init;->serverData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method abstract self()Lcom/parse/ParseObject$State$Init;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public updatedAt(J)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    iput-wide p1, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public updatedAt(Ljava/util/Date;)Lcom/parse/ParseObject$State$Init;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/parse/ParseObject$State$Init;->updatedAt:J

    invoke-virtual {p0}, Lcom/parse/ParseObject$State$Init;->self()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method
