.class public final enum Lcom/parse/a/b$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/parse/a/b$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/parse/a/b$b;

.field public static final enum b:Lcom/parse/a/b$b;

.field public static final enum c:Lcom/parse/a/b$b;

.field public static final enum d:Lcom/parse/a/b$b;

.field private static final synthetic e:[Lcom/parse/a/b$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/parse/a/b$b;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/parse/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    new-instance v0, Lcom/parse/a/b$b;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/parse/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    new-instance v0, Lcom/parse/a/b$b;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/parse/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/a/b$b;->c:Lcom/parse/a/b$b;

    new-instance v0, Lcom/parse/a/b$b;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/parse/a/b$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/parse/a/b$b;->d:Lcom/parse/a/b$b;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/parse/a/b$b;

    sget-object v1, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/parse/a/b$b;->c:Lcom/parse/a/b$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/parse/a/b$b;->d:Lcom/parse/a/b$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/parse/a/b$b;->e:[Lcom/parse/a/b$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/parse/a/b$b;
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid http method: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "POST"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "PUT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "DELETE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    :goto_1
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/parse/a/b$b;->c:Lcom/parse/a/b$b;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lcom/parse/a/b$b;->d:Lcom/parse/a/b$b;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x11336 -> :sswitch_0
        0x136ef -> :sswitch_2
        0x2590a0 -> :sswitch_1
        0x77f979ab -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/parse/a/b$b;
    .locals 1

    const-class v0, Lcom/parse/a/b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/parse/a/b$b;

    return-object v0
.end method

.method public static values()[Lcom/parse/a/b$b;
    .locals 1

    sget-object v0, Lcom/parse/a/b$b;->e:[Lcom/parse/a/b$b;

    invoke-virtual {v0}, [Lcom/parse/a/b$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/parse/a/b$b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/parse/a/b$1;->a:[I

    invoke-virtual {p0}, Lcom/parse/a/b$b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid http method: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string v0, "GET"

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "POST"

    goto :goto_0

    :pswitch_2
    const-string v0, "PUT"

    goto :goto_0

    :pswitch_3
    const-string v0, "DELETE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
