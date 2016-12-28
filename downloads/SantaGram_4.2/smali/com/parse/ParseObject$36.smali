.class final Lcom/parse/ParseObject$36;
.super Lcom/parse/ParseTraverser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alreadySeen:Ljava/util/Set;

.field final synthetic val$alreadySeenNew:Ljava/util/Set;

.field final synthetic val$dirtyChildren:Ljava/util/Collection;

.field final synthetic val$dirtyFiles:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$36;->val$dirtyFiles:Ljava/util/Collection;

    iput-object p2, p0, Lcom/parse/ParseObject$36;->val$dirtyChildren:Ljava/util/Collection;

    iput-object p3, p0, Lcom/parse/ParseObject$36;->val$alreadySeen:Ljava/util/Set;

    iput-object p4, p0, Lcom/parse/ParseObject$36;->val$alreadySeenNew:Ljava/util/Set;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    instance-of v0, p1, Lcom/parse/ParseFile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/parse/ParseObject$36;->val$dirtyFiles:Ljava/util/Collection;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    check-cast p1, Lcom/parse/ParseFile;

    invoke-virtual {p1}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$36;->val$dirtyFiles:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/parse/ParseObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$36;->val$dirtyChildren:Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/ParseObject$36;->val$alreadySeen:Ljava/util/Set;

    iget-object v2, p0, Lcom/parse/ParseObject$36;->val$alreadySeenNew:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_1
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;
    invoke-static {p1}, Lcom/parse/ParseObject;->access$1300(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseObject$36;->val$dirtyChildren:Ljava/util/Collection;

    iget-object v4, p0, Lcom/parse/ParseObject$36;->val$dirtyFiles:Ljava/util/Collection;

    # invokes: Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V
    invoke-static {v1, v3, v4, v2, v0}, Lcom/parse/ParseObject;->access$1400(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Set;Ljava/util/Set;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject$36;->val$dirtyChildren:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Found a circular dependency while saving."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
