.class Lcom/parse/ParseUser$State;
.super Lcom/parse/ParseObject$State;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseUser$State$Builder;
    }
.end annotation


# instance fields
.field private final isNew:Z


# direct methods
.method private constructor <init>(Lcom/parse/ParseUser$State$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/parse/ParseObject$State;-><init>(Lcom/parse/ParseObject$State$Init;)V

    # getter for: Lcom/parse/ParseUser$State$Builder;->isNew:Z
    invoke-static {p1}, Lcom/parse/ParseUser$State$Builder;->access$100(Lcom/parse/ParseUser$State$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/parse/ParseUser$State;->isNew:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/ParseUser$State$Builder;Lcom/parse/ParseUser$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/parse/ParseUser$State;-><init>(Lcom/parse/ParseUser$State$Builder;)V

    return-void
.end method


# virtual methods
.method public authData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const-string v0, "authData"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    return-object v0
.end method

.method public isNew()Z
    .locals 1

    iget-boolean v0, p0, Lcom/parse/ParseUser$State;->isNew:Z

    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/parse/ParseObject$State$Init;
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseUser$State;->newBuilder()Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilder()Lcom/parse/ParseUser$State$Builder;
    .locals 1

    new-instance v0, Lcom/parse/ParseUser$State$Builder;

    invoke-direct {v0, p0}, Lcom/parse/ParseUser$State$Builder;-><init>(Lcom/parse/ParseUser$State;)V

    return-object v0
.end method

.method public sessionToken()Ljava/lang/String;
    .locals 1

    const-string v0, "sessionToken"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser$State;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
