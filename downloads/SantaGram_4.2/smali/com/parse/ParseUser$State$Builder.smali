.class Lcom/parse/ParseUser$State$Builder;
.super Lcom/parse/ParseObject$State$Init;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseUser$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseObject$State$Init",
        "<",
        "Lcom/parse/ParseUser$State$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private isNew:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "_User"

    invoke-direct {p0, v0}, Lcom/parse/ParseObject$State$Init;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/parse/ParseUser$State;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/parse/ParseObject$State$Init;-><init>(Lcom/parse/ParseObject$State;)V

    invoke-virtual {p1}, Lcom/parse/ParseUser$State;->isNew()Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseUser$State$Builder;->isNew:Z

    return-void
.end method

.method static synthetic access$100(Lcom/parse/ParseUser$State$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/ParseUser$State$Builder;->isNew:Z

    return v0
.end method


# virtual methods
.method public bridge synthetic apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject$State$Init;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$State$Builder;->apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseUser$State$Builder;
    .locals 1

    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser$State;

    invoke-virtual {v0}, Lcom/parse/ParseUser$State;->isNew()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser$State$Builder;->isNew(Z)Lcom/parse/ParseUser$State$Builder;

    invoke-super {p0, p1}, Lcom/parse/ParseObject$State$Init;->apply(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State$Builder;

    return-object v0
.end method

.method public authData(Ljava/util/Map;)Lcom/parse/ParseUser$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/parse/ParseUser$State$Builder;"
        }
    .end annotation

    const-string v0, "authData"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser$State$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State$Builder;

    return-object v0
.end method

.method public bridge synthetic build()Lcom/parse/ParseObject$State;
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/parse/ParseUser$State;
    .locals 2

    new-instance v0, Lcom/parse/ParseUser$State;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/parse/ParseUser$State;-><init>(Lcom/parse/ParseUser$State$Builder;Lcom/parse/ParseUser$1;)V

    return-object v0
.end method

.method public isNew(Z)Lcom/parse/ParseUser$State$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/parse/ParseUser$State$Builder;->isNew:Z

    return-object p0
.end method

.method public putAuthData(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseUser$State$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ParseUser$State$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseUser$State$Builder;->serverData:Ljava/util/Map;

    const-string v1, "authData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/parse/ParseUser$State$Builder;->serverData:Ljava/util/Map;

    const-string v2, "authData"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method bridge synthetic self()Lcom/parse/ParseObject$State$Init;
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseUser$State$Builder;->self()Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method self()Lcom/parse/ParseUser$State$Builder;
    .locals 0

    return-object p0
.end method

.method public sessionToken(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;
    .locals 1

    const-string v0, "sessionToken"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser$State$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State$Builder;

    return-object v0
.end method
