.class public Lcom/parse/ParseRole;
.super Lcom/parse/ParseObject;


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_Role"
.end annotation


# static fields
.field private static final NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^[0-9a-zA-Z_\\- ]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseRole;->NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/parse/ParseRole;-><init>()V

    invoke-virtual {p0, p1}, Lcom/parse/ParseRole;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parse/ParseACL;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/parse/ParseRole;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/parse/ParseRole;->setACL(Lcom/parse/ParseACL;)V

    return-void
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseRole;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/parse/ParseRole;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/parse/ParseRole;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRoles()Lcom/parse/ParseRelation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseRelation",
            "<",
            "Lcom/parse/ParseRole;",
            ">;"
        }
    .end annotation

    const-string v0, "roles"

    invoke-virtual {p0, v0}, Lcom/parse/ParseRole;->getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;

    move-result-object v0

    return-object v0
.end method

.method public getUsers()Lcom/parse/ParseRelation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseRelation",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    const-string v0, "users"

    invoke-virtual {p0, v0}, Lcom/parse/ParseRole;->getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/parse/ParseRole;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A role\'s name can only be set before it has been saved."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A role\'s name must be a String."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, Lcom/parse/ParseRole;->NAME_PATTERN:Ljava/util/regex/Pattern;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A role\'s name can only contain alphanumeric characters, _, -, and spaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseRole;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method validateSave()V
    .locals 3

    iget-object v1, p0, Lcom/parse/ParseRole;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseRole;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "New roles must specify a name."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/parse/ParseObject;->validateSave()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
