.class Lcom/bytedance/frameworks/plugin/d/b/q$au;
.super Lcom/bytedance/frameworks/plugin/d/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/frameworks/plugin/d/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "au"
.end annotation


# instance fields
.field final synthetic b:Lcom/bytedance/frameworks/plugin/d/b/q;


# direct methods
.method public constructor <init>(Lcom/bytedance/frameworks/plugin/d/b/q;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/bytedance/frameworks/plugin/d/b/q$au;->b:Lcom/bytedance/frameworks/plugin/d/b/q;

    .line 893
    invoke-direct {p0, p2}, Lcom/bytedance/frameworks/plugin/d/d;-><init>(Landroid/content/Context;)V

    .line 894
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 900
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 901
    if-eqz p3, :cond_2

    instance-of v0, p4, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 904
    array-length v0, p3

    if-lez v0, :cond_3

    .line 905
    aget-object v0, p3, v3

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 906
    aget-object v0, p3, v3

    check-cast v0, Landroid/content/Intent;

    move-object v1, v0

    .line 911
    :goto_0
    array-length v0, p3

    if-le v0, v4, :cond_0

    .line 912
    aget-object v0, p3, v4

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 913
    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 917
    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 918
    array-length v3, p3

    if-le v3, v5, :cond_1

    .line 919
    aget-object v3, p3, v5

    instance-of v3, v3, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 920
    aget-object v0, p3, v5

    check-cast v0, Ljava/lang/Integer;

    .line 924
    :cond_1
    if-eqz v1, :cond_2

    .line 925
    invoke-static {}, Lcom/bytedance/frameworks/plugin/e/f;->e()Lcom/bytedance/frameworks/plugin/e/f;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v1, v2, v0}, Lcom/bytedance/frameworks/plugin/e/f;->e(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 926
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move-object v0, p4

    .line 927
    check-cast v0, Ljava/util/List;

    .line 928
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 933
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/bytedance/frameworks/plugin/d/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 934
    return-void

    :cond_3
    move-object v1, v2

    goto :goto_0
.end method
