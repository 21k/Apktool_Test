.class Lcom/ss/android/topic/presenter/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/ss/android/article/common/model/Post;

.field final synthetic c:Lcom/ss/android/topic/presenter/an;


# direct methods
.method constructor <init>(Lcom/ss/android/topic/presenter/an;Landroid/view/View;Lcom/ss/android/article/common/model/Post;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ss/android/topic/presenter/ap;->c:Lcom/ss/android/topic/presenter/an;

    iput-object p2, p0, Lcom/ss/android/topic/presenter/ap;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/ss/android/topic/presenter/ap;->b:Lcom/ss/android/article/common/model/Post;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ss/android/topic/presenter/ap;->c:Lcom/ss/android/topic/presenter/an;

    iget-object v1, p0, Lcom/ss/android/topic/presenter/ap;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/topic/presenter/ap;->b:Lcom/ss/android/article/common/model/Post;

    invoke-static {v0, v1, v2}, Lcom/ss/android/topic/presenter/an;->b(Lcom/ss/android/topic/presenter/an;Landroid/content/Context;Lcom/ss/android/article/common/model/Post;)V

    .line 60
    iget-object v0, p0, Lcom/ss/android/topic/presenter/ap;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/ss/android/topic/forumdetail/ForumDetailActivity;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/ss/android/topic/presenter/ap;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "forum_detail"

    const-string v2, "post_retry_post"

    invoke-static {v0, v1, v2}, Lcom/ss/android/common/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/ss/android/topic/presenter/ap;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/ss/android/concern/concernhome/ConcernDetailActivity;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/ss/android/topic/presenter/ap;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "concern_page"

    const-string v2, "post_retry_post"

    invoke-static {v0, v1, v2}, Lcom/ss/android/common/d/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
