.class Lcom/parse/OfflineQueryLogic;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/OfflineQueryLogic$SubQueryMatcher;,
        Lcom/parse/OfflineQueryLogic$Decider;,
        Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    }
.end annotation


# instance fields
.field private final store:Lcom/parse/OfflineStore;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/parse/OfflineQueryLogic;->store:Lcom/parse/OfflineStore;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->compareTo(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/parse/OfflineQueryLogic;)Lcom/parse/OfflineStore;
    .locals 1

    iget-object v0, p0, Lcom/parse/OfflineQueryLogic;->store:Lcom/parse/OfflineStore;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->matchesStatelessConstraint(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)La/j;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)La/j;

    move-result-object v0

    return-object v0
.end method

.method private static compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1, p2}, Lcom/parse/OfflineQueryLogic;->compareList(Ljava/lang/Object;Ljava/util/List;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {p0, p1, p2}, Lcom/parse/OfflineQueryLogic;->compareArray(Ljava/lang/Object;Lorg/json/JSONArray;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-interface {p2, p0, p1}, Lcom/parse/OfflineQueryLogic$Decider;->decide(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static compareArray(Ljava/lang/Object;Lorg/json/JSONArray;Lcom/parse/OfflineQueryLogic$Decider;)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, p0, v2}, Lcom/parse/OfflineQueryLogic$Decider;->decide(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static compareList(Ljava/lang/Object;Ljava/util/List;Lcom/parse/OfflineQueryLogic$Decider;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<*>;",
            "Lcom/parse/OfflineQueryLogic$Decider;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, p0, v1}, Lcom/parse/OfflineQueryLogic$Decider;->decide(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static compareTo(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p1, v3, :cond_1

    if-nez p1, :cond_4

    :cond_1
    move v3, v2

    :goto_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_7

    :cond_2
    if-nez v0, :cond_5

    :goto_2
    return v2

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    const/4 v2, -0x1

    goto :goto_2

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_8

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_8

    check-cast p0, Ljava/util/Date;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    goto :goto_2

    :cond_8
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_9

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_9

    check-cast p0, Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_9
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_a

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_a

    check-cast p0, Ljava/lang/Number;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p0, p1}, Lcom/parse/Numbers;->compare(Ljava/lang/Number;Ljava/lang/Number;)I

    move-result v2

    goto :goto_2

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot compare %s against %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createDontSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->createSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineQueryLogic$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/parse/OfflineQueryLogic$9;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    return-object v1
.end method

.method private createInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    check-cast p2, Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {p2}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineQueryLogic$6;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/parse/OfflineQueryLogic$6;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery$State;Ljava/lang/String;)V

    return-object v1
.end method

.method private createMatcher(Lcom/parse/ParseUser;Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParseQuery$QueryConstraints;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/parse/ParseQuery$QueryConstraints;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "$or"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->createOrMatcher(Lcom/parse/ParseUser;Ljava/util/ArrayList;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/parse/ParseQuery$KeyConstraints;

    if-eqz v1, :cond_2

    move-object v5, v0

    check-cast v5, Lcom/parse/ParseQuery$KeyConstraints;

    invoke-virtual {v5}, Lcom/parse/ParseQuery$KeyConstraints;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseQuery$KeyConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    instance-of v1, v0, Lcom/parse/ParseQuery$RelationConstraint;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/parse/ParseQuery$RelationConstraint;

    new-instance v1, Lcom/parse/OfflineQueryLogic$12;

    invoke-direct {v1, p0, p1, v0}, Lcom/parse/OfflineQueryLogic$12;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery$RelationConstraint;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/parse/OfflineQueryLogic$13;

    invoke-direct {v1, p0, p1, v4, v0}, Lcom/parse/OfflineQueryLogic$13;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/parse/OfflineQueryLogic$14;

    invoke-direct {v0, p0, p1, v6}, Lcom/parse/OfflineQueryLogic$14;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private createMatcher(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseQuery$KeyConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery$KeyConstraints;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/parse/OfflineQueryLogic$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/parse/OfflineQueryLogic$10;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)V

    :goto_1
    return-object v0

    :sswitch_0
    const-string v1, "$inQuery"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "$notInQuery"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "$select"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "$dontSelect"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p3, p4}, Lcom/parse/OfflineQueryLogic;->createInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, p3, p4}, Lcom/parse/OfflineQueryLogic;->createNotInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, p1, p3, p4}, Lcom/parse/OfflineQueryLogic;->createSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, p1, p3, p4}, Lcom/parse/OfflineQueryLogic;->createDontSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2b0248ef -> :sswitch_3
        0xe79d9ff -> :sswitch_0
        0x19745774 -> :sswitch_1
        0x3a5f8a20 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createNotInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineQueryLogic;->createInQueryMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineQueryLogic$7;

    invoke-direct {v1, p0, p1, v0}, Lcom/parse/OfflineQueryLogic$7;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    return-object v1
.end method

.method private createOrMatcher(Lcom/parse/ParseUser;Ljava/util/ArrayList;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/parse/ParseQuery$QueryConstraints;",
            ">;)",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQuery$QueryConstraints;

    invoke-direct {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseUser;Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/parse/OfflineQueryLogic$11;

    invoke-direct {v0, p0, p1, v1}, Lcom/parse/OfflineQueryLogic$11;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private createSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    check-cast p2, Ljava/util/Map;

    const-string v0, "query"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v3

    const-string v0, "key"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v0, Lcom/parse/OfflineQueryLogic$8;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineQueryLogic$8;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery$State;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static fetchIncludeAsync(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)La/j;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/OfflineStore;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-static {v1}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/util/Collection;

    invoke-static {v1}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/parse/OfflineQueryLogic$17;

    invoke-direct {v3, p0, v2, p2, p3}, Lcom/parse/OfflineQueryLogic$17;-><init>(Lcom/parse/OfflineStore;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v3}, La/j;->d(La/h;)La/j;

    move-result-object v0

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_4

    move-object v2, p1

    check-cast v2, Lorg/json/JSONArray;

    invoke-static {v1}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    move-object v6, v0

    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v3, v0, :cond_3

    new-instance v0, Lcom/parse/OfflineQueryLogic$18;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineQueryLogic$18;-><init>(Lcom/parse/OfflineStore;Lorg/json/JSONArray;ILjava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v6, v0}, La/j;->d(La/h;)La/j;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    move-object v6, v0

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_0

    :cond_4
    if-nez p2, :cond_7

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v1}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/parse/ParseObject;

    if-eqz v0, :cond_6

    check-cast p1, Lcom/parse/ParseObject;

    invoke-virtual {p0, p1, p3}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/parse/ParseException;

    const/16 v1, 0x79

    const-string v2, "include is invalid for non-ParseObjects"

    invoke-direct {v0, v1, v2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, La/j;->a(Ljava/lang/Exception;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v0, "\\."

    const/4 v2, 0x2

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v3

    array-length v3, v0

    if-le v3, v4, :cond_8

    aget-object v0, v0, v4

    :goto_3
    invoke-static {v1}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v1

    new-instance v3, Lcom/parse/OfflineQueryLogic$20;

    invoke-direct {v3, p1, p0, p3, v2}, Lcom/parse/OfflineQueryLogic$20;-><init>(Ljava/lang/Object;Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, La/j;->b(La/h;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineQueryLogic$19;

    invoke-direct {v2, p0, v0, p3}, Lcom/parse/OfflineQueryLogic$19;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, La/j;->d(La/h;)La/j;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method static fetchIncludesAsync(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseQuery$State;Lcom/parse/ParseSQLiteDatabase;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/OfflineStore;",
            "TT;",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/parse/ParseQuery$State;->includes()Ljava/util/Set;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/parse/OfflineQueryLogic$21;

    invoke-direct {v3, p0, p1, v0, p3}, Lcom/parse/OfflineQueryLogic$21;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v3}, La/j;->d(La/h;)La/j;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 6

    const/16 v5, 0x79

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "\\."

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v1

    add-int/lit8 v5, p2, 0x1

    invoke-static {p0, v4, v5}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v5, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq v4, v5, :cond_2

    instance-of v5, v4, Ljava/util/Map;

    if-nez v5, :cond_2

    instance-of v5, v4, Lorg/json/JSONObject;

    if-nez v5, :cond_2

    if-lez p2, :cond_1

    :try_start_0
    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/parse/PointerEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    instance-of v4, v0, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    aget-object v1, v3, v2

    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, v1, v2}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lcom/parse/ParseException;

    const/16 v3, 0x66

    const-string v4, "Key %s is invalid."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    aget-object v0, v3, v2

    add-int/lit8 v1, p2, 0x1

    invoke-static {v4, v0, v1}, Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    instance-of v4, p0, Lcom/parse/ParseObject;

    if-eqz v4, :cond_6

    check-cast p0, Lcom/parse/ParseObject;

    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/parse/ParseException;

    const-string v3, "Bad key: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_5
    :goto_2
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :sswitch_0
    const-string v2, "objectId"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    goto :goto_2

    :sswitch_1
    const-string v1, "createdAt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v2

    goto :goto_2

    :sswitch_2
    const-string v1, "_created_at"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v0, v3

    goto :goto_2

    :sswitch_3
    const-string v1, "updatedAt"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_4
    const-string v1, "_updated_at"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x4

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getCreatedAt()Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getUpdatedAt()Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    instance-of v3, p0, Lorg/json/JSONObject;

    if-eqz v3, :cond_7

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    :cond_7
    instance-of v3, p0, Ljava/util/Map;

    if-eqz v3, :cond_8

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_1

    :cond_8
    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p0, v3, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/parse/ParseException;

    const-string v3, "Bad key: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_0
    move-exception v4

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x742e59b2 -> :sswitch_3
        -0x6d7e0177 -> :sswitch_2
        0x564d8ba -> :sswitch_0
        0x23aa6d3b -> :sswitch_1
        0x2f41e7d6 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method static hasReadAccess(Lcom/parse/ParseUser;Lcom/parse/ParseObject;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/parse/ParseACL;->getPublicReadAccess()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Lcom/parse/ParseACL;->getReadAccess(Lcom/parse/ParseUser;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static hasWriteAccess(Lcom/parse/ParseUser;Lcom/parse/ParseObject;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseUser;",
            "TT;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/parse/ParseACL;->getPublicWriteAccess()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Lcom/parse/ParseACL;->getWriteAccess(Lcom/parse/ParseUser;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchesAllConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Ljava/util/Collection;

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value type not supported for $all queries."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_5

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constraint type not supported for $all queries."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    :cond_0
    if-ne p0, p1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_4

    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_4

    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->compareTo(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_4
    instance-of v2, p0, Lcom/parse/ParseGeoPoint;

    if-eqz v2, :cond_6

    instance-of v2, p1, Lcom/parse/ParseGeoPoint;

    if-eqz v2, :cond_6

    check-cast p0, Lcom/parse/ParseGeoPoint;

    check-cast p1, Lcom/parse/ParseGeoPoint;

    invoke-virtual {p0}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/parse/OfflineQueryLogic$1;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$1;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    goto :goto_0
.end method

.method private static matchesExistsConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-eq p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v2, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private static matchesGreaterThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    new-instance v0, Lcom/parse/OfflineQueryLogic$4;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$4;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesGreaterThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    new-instance v0, Lcom/parse/OfflineQueryLogic$5;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$5;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constraint type not supported for $in queries."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static matchesLessThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    new-instance v0, Lcom/parse/OfflineQueryLogic$2;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$2;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesLessThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    new-instance v0, Lcom/parse/OfflineQueryLogic$3;

    invoke-direct {v0}, Lcom/parse/OfflineQueryLogic$3;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/parse/OfflineQueryLogic;->compare(Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/OfflineQueryLogic$Decider;)Z

    move-result v0

    return v0
.end method

.method private static matchesNearSphereConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Double;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p2, :cond_1

    check-cast p0, Lcom/parse/ParseGeoPoint;

    check-cast p1, Lcom/parse/ParseGeoPoint;

    invoke-virtual {p0, p1}, Lcom/parse/ParseGeoPoint;->distanceInRadiansTo(Lcom/parse/ParseGeoPoint;)D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private static matchesNotEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchesNotInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchesRegexConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    const-string v1, "^[imxs]*$"

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/parse/ParseException;

    const/16 v2, 0x66

    const-string v3, "Invalid regex options: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_3
    const-string v1, "i"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    :cond_4
    const-string v1, "m"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    :cond_5
    const-string v1, "x"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x4

    :cond_6
    const-string v1, "s"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    :cond_7
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    goto :goto_0
.end method

.method private static matchesStatelessConstraint(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/parse/ParseQuery$KeyConstraints;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v3, "The offline store does not yet support the %s operator."

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const-string v3, "$ne"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v3, "$lt"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "$lte"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "$gt"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "$gte"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "$in"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "$nin"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "$all"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "$regex"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string v3, "$options"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_a
    const-string v3, "$exists"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "$nearSphere"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "$maxDistance"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "$within"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_0

    :pswitch_0
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesNotEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    :pswitch_1
    return v0

    :pswitch_2
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesLessThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesLessThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_4
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesGreaterThanConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_5
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesGreaterThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_6
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_7
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesNotInConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_8
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesAllConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_9
    const-string v0, "$options"

    invoke-virtual {p3, v0}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/parse/OfflineQueryLogic;->matchesRegexConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_a
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesExistsConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_b
    const-string v0, "$maxDistance"

    invoke-virtual {p3, v0}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-static {p1, p2, v0}, Lcom/parse/OfflineQueryLogic;->matchesNearSphereConstraint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Double;)Z

    move-result v0

    goto :goto_1

    :pswitch_c
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->matchesWithinConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60b0cd2b -> :sswitch_c
        -0x1a72bec7 -> :sswitch_b
        0x9411 -> :sswitch_3
        0x9449 -> :sswitch_5
        0x94ac -> :sswitch_1
        0x94db -> :sswitch_0
        0x11d6fd -> :sswitch_7
        0x11ee74 -> :sswitch_4
        0x120139 -> :sswitch_2
        0x12076f -> :sswitch_6
        0x23864980 -> :sswitch_a
        0x416ef98f -> :sswitch_d
        0x43e466a3 -> :sswitch_8
        0x5130d5fa -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_c
    .end packed-switch
.end method

.method private static matchesWithinConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 9

    const/4 v2, 0x1

    const/16 v8, 0x66

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    check-cast p0, Ljava/util/HashMap;

    const-string v0, "$box"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseGeoPoint;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseGeoPoint;

    check-cast p1, Lcom/parse/ParseGeoPoint;

    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "whereWithinGeoBox queries cannot cross the International Date Line."

    invoke-direct {v0, v8, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "The southwest corner of a geo box must be south of the northeast corner."

    invoke-direct {v0, v8, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    new-instance v0, Lcom/parse/ParseException;

    const-string v1, "Geo box queries larger than 180 degrees in longitude are not supported. Please check point order."

    invoke-direct {v0, v8, v1}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5

    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLatitude()D

    move-result-wide v6

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_5

    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v6

    cmpl-double v1, v4, v6

    if-ltz v1, :cond_5

    invoke-virtual {p1}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lcom/parse/ParseGeoPoint;->getLongitude()D

    move-result-wide v0

    cmpg-double v0, v4, v0

    if-gtz v0, :cond_5

    move v0, v2

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto/16 :goto_0
.end method

.method static sort(Ljava/util/List;Lcom/parse/ParseQuery$State;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->order()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->order()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "^-?[A-Za-z][A-Za-z0-9_]*$"

    invoke-virtual {v0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "_created_at"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "_updated_at"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Lcom/parse/ParseException;

    const/16 v2, 0x69

    const-string v3, "Invalid key name: \"%s\"."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->constraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseQuery$QueryConstraints;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->constraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/ParseQuery$QueryConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v1, Lcom/parse/ParseQuery$KeyConstraints;

    if-eqz v6, :cond_4

    check-cast v1, Lcom/parse/ParseQuery$KeyConstraints;

    const-string v6, "$nearSphere"

    invoke-virtual {v1, v6}, Lcom/parse/ParseQuery$KeyConstraints;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v2, "$nearSphere"

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery$KeyConstraints;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseGeoPoint;

    :goto_1
    move-object v2, v1

    move-object v3, v0

    goto :goto_0

    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    :goto_2
    return-void

    :cond_3
    new-instance v0, Lcom/parse/OfflineQueryLogic$16;

    invoke-direct {v0, v3, v2, v4}, Lcom/parse/OfflineQueryLogic$16;-><init>(Ljava/lang/String;Lcom/parse/ParseGeoPoint;Ljava/util/List;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    :cond_4
    move-object v1, v2

    move-object v0, v3

    goto :goto_1
.end method


# virtual methods
.method createMatcher(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            ")",
            "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->ignoreACLs()Z

    move-result v0

    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->constraints()Lcom/parse/ParseQuery$QueryConstraints;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseUser;Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineQueryLogic$15;

    invoke-direct {v2, p0, p2, v0, v1}, Lcom/parse/OfflineQueryLogic$15;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;ZLcom/parse/OfflineQueryLogic$ConstraintMatcher;)V

    return-object v2
.end method
