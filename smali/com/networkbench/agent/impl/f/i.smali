.class public final enum Lcom/networkbench/agent/impl/f/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/networkbench/agent/impl/f/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/networkbench/agent/impl/f/i;

.field public static final enum b:Lcom/networkbench/agent/impl/f/i;

.field public static final enum c:Lcom/networkbench/agent/impl/f/i;

.field public static final enum d:Lcom/networkbench/agent/impl/f/i;

.field public static final enum e:Lcom/networkbench/agent/impl/f/i;

.field public static final enum f:Lcom/networkbench/agent/impl/f/i;

.field public static final enum g:Lcom/networkbench/agent/impl/f/i;

.field private static final synthetic h:[Lcom/networkbench/agent/impl/f/i;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/networkbench/agent/impl/f/i;

    const-string v1, "Network"

    invoke-direct {v0, v1, v3}, Lcom/networkbench/agent/impl/f/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/f/i;->a:Lcom/networkbench/agent/impl/f/i;

    new-instance v0, Lcom/networkbench/agent/impl/f/i;

    const-string v1, "HttpError"

    invoke-direct {v0, v1, v4}, Lcom/networkbench/agent/impl/f/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/f/i;->b:Lcom/networkbench/agent/impl/f/i;

    new-instance v0, Lcom/networkbench/agent/impl/f/i;

    const-string v1, "Method"

    invoke-direct {v0, v1, v5}, Lcom/networkbench/agent/impl/f/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/f/i;->c:Lcom/networkbench/agent/impl/f/i;

    new-instance v0, Lcom/networkbench/agent/impl/f/i;

    const-string v1, "Activity"

    invoke-direct {v0, v1, v6}, Lcom/networkbench/agent/impl/f/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/f/i;->d:Lcom/networkbench/agent/impl/f/i;

    new-instance v0, Lcom/networkbench/agent/impl/f/i;

    const-string v1, "Custom"

    invoke-direct {v0, v1, v7}, Lcom/networkbench/agent/impl/f/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/f/i;->e:Lcom/networkbench/agent/impl/f/i;

    new-instance v0, Lcom/networkbench/agent/impl/f/i;

    const-string v1, "Any"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/f/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/f/i;->f:Lcom/networkbench/agent/impl/f/i;

    new-instance v0, Lcom/networkbench/agent/impl/f/i;

    const-string v1, "MEMORY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/f/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/networkbench/agent/impl/f/i;->g:Lcom/networkbench/agent/impl/f/i;

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/networkbench/agent/impl/f/i;

    sget-object v1, Lcom/networkbench/agent/impl/f/i;->a:Lcom/networkbench/agent/impl/f/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/networkbench/agent/impl/f/i;->b:Lcom/networkbench/agent/impl/f/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/networkbench/agent/impl/f/i;->c:Lcom/networkbench/agent/impl/f/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/networkbench/agent/impl/f/i;->d:Lcom/networkbench/agent/impl/f/i;

    aput-object v1, v0, v6

    sget-object v1, Lcom/networkbench/agent/impl/f/i;->e:Lcom/networkbench/agent/impl/f/i;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/networkbench/agent/impl/f/i;->f:Lcom/networkbench/agent/impl/f/i;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/networkbench/agent/impl/f/i;->g:Lcom/networkbench/agent/impl/f/i;

    aput-object v2, v0, v1

    sput-object v0, Lcom/networkbench/agent/impl/f/i;->h:[Lcom/networkbench/agent/impl/f/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/networkbench/agent/impl/f/i;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/networkbench/agent/impl/f/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/networkbench/agent/impl/f/i;

    return-object v0
.end method

.method public static values()[Lcom/networkbench/agent/impl/f/i;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/networkbench/agent/impl/f/i;->h:[Lcom/networkbench/agent/impl/f/i;

    invoke-virtual {v0}, [Lcom/networkbench/agent/impl/f/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/networkbench/agent/impl/f/i;

    return-object v0
.end method
