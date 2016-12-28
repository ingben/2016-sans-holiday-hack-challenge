.class Lcom/parse/PushHistory;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/PushHistory$Entry;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.PushHistory"


# instance fields
.field private final entries:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/parse/PushHistory$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private lastTime:Ljava/lang/String;

.field private final maxHistoryLength:I

.field private final pushIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/parse/PushHistory;->maxHistoryLength:I

    new-instance v0, Ljava/util/PriorityQueue;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(I)V

    iput-object v0, p0, Lcom/parse/PushHistory;->entries:Ljava/util/PriorityQueue;

    new-instance v0, Ljava/util/HashSet;

    add-int/lit8 v1, p1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/parse/PushHistory;->pushIds:Ljava/util/HashSet;

    iput-object v4, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string v0, "seen"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, v3}, Lcom/parse/PushHistory;->tryInsertPush(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string v0, "lastTime"

    invoke-virtual {p2, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/PushHistory;->setLastReceivedTimestamp(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getLastReceivedTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    return-object v0
.end method

.method public setLastReceivedTimestamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/parse/PushHistory;->entries:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/parse/PushHistory;->entries:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/PushHistory$Entry;

    iget-object v4, v0, Lcom/parse/PushHistory$Entry;->pushId:Ljava/lang/String;

    iget-object v0, v0, Lcom/parse/PushHistory$Entry;->timestamp:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v0, "seen"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v0, "lastTime"

    iget-object v2, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v1
.end method

.method public tryInsertPush(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t insert null pushId or timestamp into history"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    iput-object p2, p0, Lcom/parse/PushHistory;->lastTime:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/parse/PushHistory;->pushIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.parse.PushHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored duplicate push "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    iget-object v0, p0, Lcom/parse/PushHistory;->entries:Ljava/util/PriorityQueue;

    new-instance v1, Lcom/parse/PushHistory$Entry;

    invoke-direct {v1, p1, p2}, Lcom/parse/PushHistory$Entry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/parse/PushHistory;->pushIds:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/parse/PushHistory;->entries:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/parse/PushHistory;->maxHistoryLength:I

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/parse/PushHistory;->entries:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/PushHistory$Entry;

    iget-object v1, p0, Lcom/parse/PushHistory;->pushIds:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/parse/PushHistory$Entry;->pushId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
