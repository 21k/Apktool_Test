.class Lcom/ss/android/article/base/feature/feed/presenter/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ss/android/article/base/feature/feed/presenter/e;


# direct methods
.method constructor <init>(Lcom/ss/android/article/base/feature/feed/presenter/e;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/ss/android/article/base/feature/feed/presenter/h;->a:Lcom/ss/android/article/base/feature/feed/presenter/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 198
    const-string v0, "__all__"

    iget-object v1, p0, Lcom/ss/android/article/base/feature/feed/presenter/h;->a:Lcom/ss/android/article/base/feature/feed/presenter/e;

    iget-object v1, v1, Lcom/ss/android/article/base/feature/feed/presenter/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/ss/android/article/base/feature/feed/presenter/h;->a:Lcom/ss/android/article/base/feature/feed/presenter/e;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/feed/presenter/e;->a:Landroid/content/Context;

    const-string v1, "new_tab"

    const-string v2, "last_read_click"

    invoke-static {v0, v1, v2}, Lcom/ss/android/common/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    invoke-static {}, Lcom/ss/android/article/base/feature/feed/c;->a()Lcom/ss/android/article/base/feature/feed/presenter/x;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/article/base/feature/feed/presenter/h;->a:Lcom/ss/android/article/base/feature/feed/presenter/e;

    iget-object v1, v1, Lcom/ss/android/article/base/feature/feed/presenter/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/article/base/feature/feed/presenter/x;->b(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/ss/android/article/base/feature/feed/presenter/h;->a:Lcom/ss/android/article/base/feature/feed/presenter/e;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/feed/presenter/e;->A:Lcom/ss/android/article/base/feature/model/k;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ss/android/article/base/feature/model/k;->n:Z

    .line 206
    iget-object v0, p0, Lcom/ss/android/article/base/feature/feed/presenter/h;->a:Lcom/ss/android/article/base/feature/feed/presenter/e;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/feed/presenter/e;->C:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/ss/android/article/base/feature/feed/presenter/h;->a:Lcom/ss/android/article/base/feature/feed/presenter/e;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/feed/presenter/e;->C:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 209
    :cond_0
    const-string v0, "__all__"

    iget-object v1, p0, Lcom/ss/android/article/base/feature/feed/presenter/h;->a:Lcom/ss/android/article/base/feature/feed/presenter/e;

    iget-object v1, v1, Lcom/ss/android/article/base/feature/feed/presenter/e;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/ss/android/article/base/feature/feed/presenter/h;->a:Lcom/ss/android/article/base/feature/feed/presenter/e;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/feed/presenter/e;->a:Landroid/content/Context;

    const-string v1, "new_tab"

    const-string v2, "refresh_last_read"

    invoke-static {v0, v1, v2}, Lcom/ss/android/common/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_1
    iget-object v0, p0, Lcom/ss/android/article/base/feature/feed/presenter/h;->a:Lcom/ss/android/article/base/feature/feed/presenter/e;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/feed/presenter/e;->a:Landroid/content/Context;

    const-string v1, "category"

    const-string v2, "refresh_last_read_all"

    invoke-static {v0, v1, v2}, Lcom/ss/android/common/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/ss/android/article/base/feature/feed/presenter/h;->a:Lcom/ss/android/article/base/feature/feed/presenter/e;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/feed/presenter/e;->a:Landroid/content/Context;

    const-string v1, "category"

    const-string v2, "last_read_click"

    invoke-static {v0, v1, v2}, Lcom/ss/android/common/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/ss/android/article/base/feature/feed/presenter/h;->a:Lcom/ss/android/article/base/feature/feed/presenter/e;

    iget-object v0, v0, Lcom/ss/android/article/base/feature/feed/presenter/e;->a:Landroid/content/Context;

    const-string v1, "category"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh_last_read_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/article/base/feature/feed/presenter/h;->a:Lcom/ss/android/article/base/feature/feed/presenter/e;

    iget-object v3, v3, Lcom/ss/android/article/base/feature/feed/presenter/e;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/common/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
