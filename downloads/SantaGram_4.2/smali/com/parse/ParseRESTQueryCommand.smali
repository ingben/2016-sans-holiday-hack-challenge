.class Lcom/parse/ParseRESTQueryCommand;
.super Lcom/parse/ParseRESTCommand;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/a/b$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static countCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTQueryCommand;"
        }
    .end annotation

    const/4 v4, 0x1

    const-string v0, "classes/%s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->className()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v4}, Lcom/parse/ParseRESTQueryCommand;->encode(Lcom/parse/ParseQuery$State;Z)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseRESTQueryCommand;

    sget-object v3, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    invoke-direct {v2, v0, v3, v1, p1}, Lcom/parse/ParseRESTQueryCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V

    return-object v2
.end method

.method static encode(Lcom/parse/ParseQuery$State;Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->order()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "order"

    const-string v4, ","

    invoke-static {v4, v0}, Lcom/parse/ParseTextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->constraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseQuery$QueryConstraints;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v3, "where"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v3, "keys"

    const-string v4, ","

    invoke-static {v4, v0}, Lcom/parse/ParseTextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->includes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "include"

    const-string v4, ","

    invoke-static {v4, v0}, Lcom/parse/ParseTextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz p1, :cond_5

    const-string v0, "count"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->extraOptions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->limit()I

    move-result v0

    if-ltz v0, :cond_6

    const-string v3, "limit"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->skip()I

    move-result v0

    if-lez v0, :cond_4

    const-string v3, "skip"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "trace"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    return-object v2
.end method

.method public static findCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTQueryCommand;"
        }
    .end annotation

    const/4 v3, 0x0

    const-string v0, "classes/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/parse/ParseQuery$State;->className()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3}, Lcom/parse/ParseRESTQueryCommand;->encode(Lcom/parse/ParseQuery$State;Z)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseRESTQueryCommand;

    sget-object v3, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    invoke-direct {v2, v0, v3, v1, p1}, Lcom/parse/ParseRESTQueryCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V

    return-object v2
.end method
