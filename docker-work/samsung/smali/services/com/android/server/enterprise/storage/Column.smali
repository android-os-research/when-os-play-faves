.class public Lcom/android/server/enterprise/storage/Column;
.super Ljava/lang/Object;
.source "Column.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/storage/Column$DATA_TYPE;
    }
.end annotation


# instance fields
.field public mColumnName:Ljava/lang/String;

.field public mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

.field public mDefaultValue:Ljava/lang/String;

.field public mIsPrimaryKey:Z

.field public mProperties:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/enterprise/storage/Column$DATA_TYPE;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/android/server/enterprise/storage/Column;->mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    .line 52
    iput-boolean p3, p0, Lcom/android/server/enterprise/storage/Column;->mIsPrimaryKey:Z

    .line 53
    iput-object p4, p0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    .line 54
    iput-object p5, p0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSQLDeclaration()Ljava/lang/String;
    .registers 8

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 58
    iget-object v2, p0, Lcom/android/server/enterprise/storage/Column;->mColumnName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/server/enterprise/storage/Column;->mColumnType:Lcom/android/server/enterprise/storage/Column$DATA_TYPE;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "%s %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 60
    iget-object v5, p0, Lcom/android/server/enterprise/storage/Column;->mProperties:Ljava/lang/String;

    if-eqz v5, :cond_25

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v1, v6, v3

    aput-object v5, v6, v4

    .line 61
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 64
    :cond_25
    iget-object p0, p0, Lcom/android/server/enterprise/storage/Column;->mDefaultValue:Ljava/lang/String;

    if-eqz p0, :cond_35

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v1, v0, v3

    aput-object p0, v0, v4

    const-string p0, "%s DEFAULT %s"

    .line 65
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_35
    return-object v1
.end method
