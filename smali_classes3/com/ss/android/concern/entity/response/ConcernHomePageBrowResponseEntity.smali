.class public Lcom/ss/android/concern/entity/response/ConcernHomePageBrowResponseEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public concern_obj:Lcom/ss/android/article/common/entity/ConcernEntity;

.field public err_no:I

.field public err_tips:Ljava/lang/String;

.field public finfo_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/article/common/entity/GeneralPostEntity;",
            ">;"
        }
    .end annotation
.end field

.field public has_more:I

.field public login_user_info:Lcom/ss/android/article/common/entity/UserPermissionEntity;

.field public max_cursor:J

.field public min_cursor:J

.field public news_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/article/common/entity/GroupEntity;",
            ">;"
        }
    .end annotation
.end field

.field public table:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/article/common/model/Tab;",
            ">;"
        }
    .end annotation
.end field

.field public tips:Lcom/ss/android/article/common/model/Tips;

.field public top_thread:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/article/common/entity/PostEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
