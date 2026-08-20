.class public Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;
.super Ljava/lang/Object;
.source "AppSyncInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/alarm/AppSyncInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCPMHelper"
.end annotation


# static fields
.field public static final ACTION_UPDATE_SCPM:Ljava/lang/String; = "sec.app.policy.UPDATE.AppsyncPolicy"

.field public static final APPSYNC_POLICY_SCPM_NAME:Ljava/lang/String; = "AppsyncPolicy"

.field public static final AUTHORITY_SCPM:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field public static final CATEGORY_ALLOWLISTPACKAGES:Ljava/lang/String; = "CAT_ALLOW_PKGS"

.field public static final CATEGORY_BLOCKLISTPACKAGES:Ljava/lang/String; = "CAT_BLOCK_PKGS"

.field public static final CATEGORY_INEXACTWINDOWSIZE:Ljava/lang/String; = "CAT_WIN_MILLIS"

.field public static final CATEGORY_SUSPICIOUSPACKAGES:Ljava/lang/String; = "CAT_SUSP_PKGS"

.field public static final CATEGORY_SUSPICIOUSTIMETHRESHOLD:Ljava/lang/String; = "CAT_SUSP_MILLIS"

.field public static final POLICY_CATEGORY:Ljava/lang/String; = "category"

.field public static final POLICY_ITEM_PRIMARY:Ljava/lang/String; = "item"


# instance fields
.field public final AUTHORITY_SCPM_URI:Landroid/net/Uri;

.field public final CONTENT_SCPM_URI:Landroid/net/Uri;

.field public final POLICY_ITEMS:[Ljava/lang/String;

.field public final POLICY_SCPM_PROJECTION:[Ljava/lang/String;

.field public final POLICY_SCPM_URI:Landroid/net/Uri;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mCtx:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/server/alarm/AppSyncInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AppSyncInfo;Landroid/content/Context;)V
    .registers 9

    .line 1034
    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "item"

    const-string v1, "data1"

    const-string v2, "data2"

    const-string v3, "data3"

    const-string v4, "data4"

    const-string v5, "data5"

    .line 1023
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    const-string v0, "content://com.samsung.android.sm.policy"

    .line 1027
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->AUTHORITY_SCPM_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_item"

    .line 1028
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->CONTENT_SCPM_URI:Landroid/net/Uri;

    const-string v1, "AppsyncPolicy"

    .line 1029
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1030
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aget-object v2, p1, v1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aget-object v2, p1, v1

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aget-object v2, p1, v1

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aget-object v2, p1, v1

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aget-object p1, p1, v1

    aput-object p1, v0, v1

    const/4 p1, 0x6

    const-string v1, "category"

    aput-object v1, v0, p1

    iput-object v0, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    .line 1035
    iput-object p2, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mCtx:Landroid/content/Context;

    .line 1036
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getAllowlistPkgFromSCPM()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "CAT_ALLOW_PKGS"

    .line 1170
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1171
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return-object v1

    .line 1179
    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    :cond_1c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1181
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_26
    if-ge v5, v4, :cond_1c

    aget-object v6, v3, v5

    .line 1182
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_31

    goto :goto_49

    .line 1191
    :cond_31
    :try_start_31
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    move-object v6, v1

    :goto_37
    if-eqz v6, :cond_49

    const-string v7, ""

    .line 1196
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    goto :goto_49

    .line 1199
    :cond_42
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    :goto_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 1202
    :cond_4c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public getBlocklistPkgFromSCPM()Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "CAT_BLOCK_PKGS"

    .line 1208
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1209
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return-object v1

    .line 1217
    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    :cond_1c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1219
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_26
    if-ge v5, v4, :cond_1c

    aget-object v6, v3, v5

    .line 1220
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_31

    goto :goto_49

    .line 1229
    :cond_31
    :try_start_31
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    move-object v6, v1

    :goto_37
    if-eqz v6, :cond_49

    const-string v7, ""

    .line 1234
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    goto :goto_49

    .line 1237
    :cond_42
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    :goto_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 1240
    :cond_4c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public getInexactWindowFromSCPM()J
    .registers 8

    const-string v0, "CAT_WIN_MILLIS"

    .line 1088
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1089
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-nez p0, :cond_18

    return-wide v0

    .line 1097
    :cond_18
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1100
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :cond_22
    const-string/jumbo v2, "item"

    .line 1104
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2f

    .line 1108
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 1114
    :cond_2f
    :try_start_2f
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_37

    .line 1119
    :catch_33
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3c

    :catchall_37
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1120
    throw v0

    :goto_3c
    return-wide v0
.end method

.method public getSuspiciousTagFromSCPM()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "CAT_SUSP_PKGS"

    .line 1132
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1133
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    return-object v1

    .line 1141
    :cond_17
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    :cond_1c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 1143
    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_ITEMS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_26
    if-ge v5, v4, :cond_1c

    aget-object v6, v3, v5

    .line 1144
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_31

    goto :goto_4c

    .line 1153
    :cond_31
    :try_start_31
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    move-object v6, v1

    :goto_37
    if-eqz v6, :cond_4c

    const-string v7, ""

    .line 1158
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_42

    goto :goto_4c

    .line 1161
    :cond_42
    iget-object v7, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->this$0:Lcom/android/server/alarm/AppSyncInfo;

    const/4 v8, -0x1

    invoke-static {v7, v6, v8}, Lcom/android/server/alarm/AppSyncInfo;->-$$Nest$mgetPackageTag(Lcom/android/server/alarm/AppSyncInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4c
    :goto_4c
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 1164
    :cond_4f
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public getSuspiciousTimeLimitFromSCPM()J
    .registers 8

    const-string v0, "CAT_SUSP_MILLIS"

    .line 1051
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    .line 1052
    iget-object v1, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->POLICY_SCPM_PROJECTION:[Ljava/lang/String;

    const-string v4, "category = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-nez p0, :cond_18

    return-wide v0

    .line 1060
    :cond_18
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1063
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    :cond_22
    const-string/jumbo v2, "item"

    .line 1067
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_2f

    .line 1071
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 1077
    :cond_2f
    :try_start_2f
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_33} :catch_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_37

    .line 1082
    :catch_33
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_3c

    :catchall_37
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1083
    throw v0

    :goto_3c
    return-wide v0
.end method

.method public isSCPMAvailable()Z
    .registers 3

    .line 1040
    iget-object p0, p0, Lcom/android/server/alarm/AppSyncInfo$SCPMHelper;->mCtx:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.samsung.android.sm.policy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method
