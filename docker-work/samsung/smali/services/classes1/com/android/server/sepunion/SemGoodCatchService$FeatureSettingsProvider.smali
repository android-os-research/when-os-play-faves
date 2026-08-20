.class public Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeatureSettingsProvider"
.end annotation


# static fields
.field public static final FUNCTION:Ljava/lang/String; = "setting_changed"

.field public static final MODULE:Ljava/lang/String; = "SettingsProvider"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 3

    .line 931
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    const-string v0, "FeatureSettingsProvider"

    .line 932
    invoke-direct {p0, p1, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 2

    .line 969
    invoke-super {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getSelectedSettingKey()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 936
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "db_key"

    .line 937
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    .line 941
    :try_start_c
    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmContentResolver(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/ContentResolver;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {p0}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fgetmFeatureSettingsProvider(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureSettingsProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_5a

    .line 944
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-eqz p0, :cond_5a

    .line 945
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 948
    :cond_2e
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v8, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3d} :catch_40

    if-nez p0, :cond_2e

    goto :goto_5a

    :catch_40
    move-exception p0

    .line 953
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSelectedSettingKey() error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    :goto_5a
    if-eqz v8, :cond_5f

    .line 956
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 958
    :cond_5f
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSelectedSettingKey() returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " keys."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public reset()V
    .registers 2

    .line 963
    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->off()V

    const/4 v0, 0x0

    .line 964
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->setUri(Landroid/net/Uri;)V

    return-void
.end method
