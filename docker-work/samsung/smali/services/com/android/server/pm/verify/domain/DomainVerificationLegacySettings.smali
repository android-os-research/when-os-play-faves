.class public Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;
.super Ljava/lang/Object;
.source "DomainVerificationLegacySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;
    }
.end annotation


# static fields
.field public static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final ATTR_STATE:Ljava/lang/String; = "state"

.field public static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field public static final TAG_DOMAIN_VERIFICATIONS_LEGACY:Ljava/lang/String; = "domain-verifications-legacy"

.field public static final TAG_USER_STATE:Ljava/lang/String; = "user-state"

.field public static final TAG_USER_STATES:Ljava/lang/String; = "user-states"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;II)V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->addUserState(II)V

    .line 71
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public add(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V
    .registers 4

    .line 63
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->setInfo(Landroid/content/pm/IntentFilterVerificationInfo;)V

    .line 65
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public final getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    if-nez v0, :cond_14

    .line 114
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;-><init>()V

    .line 115
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method public getUserState(Ljava/lang/String;I)I
    .registers 4

    .line 75
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 76
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    if-eqz p0, :cond_13

    .line 78
    invoke-virtual {p0, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->getUserState(I)I

    move-result p0

    monitor-exit v0

    return p0

    .line 80
    :cond_13
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public getUserStates(Ljava/lang/String;)Landroid/util/SparseIntArray;
    .registers 3

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    if-eqz p0, :cond_13

    .line 91
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->getUserStates()Landroid/util/SparseIntArray;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 93
    :cond_13
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public readSettings(Landroid/util/TypedXmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 157
    invoke-static {p1}, Lcom/android/server/pm/SettingsXml;->parser(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/SettingsXml$ReadSection;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p1

    .line 158
    :cond_8
    :goto_8
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 159
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user-states"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;)V

    goto :goto_8

    :cond_1f
    return-void
.end method

.method public final readUserState(Lcom/android/server/pm/SettingsXml$ReadSection;Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;)V
    .registers 4

    const-string/jumbo p0, "userId"

    .line 179
    invoke-interface {p1, p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string/jumbo v0, "state"

    .line 180
    invoke-interface {p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 181
    invoke-virtual {p2, p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->addUserState(II)V

    return-void
.end method

.method public final readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;)V
    .registers 6

    const-string/jumbo v0, "packageName"

    .line 166
    invoke-interface {p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_a
    invoke-virtual {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->getOrCreateStateLocked(Ljava/lang/String;)Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    move-result-object v0

    .line 169
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p1

    .line 170
    :cond_12
    :goto_12
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_29

    const-string/jumbo v2, "user-state"

    .line 171
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 172
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->readUserState(Lcom/android/server/pm/SettingsXml$ReadSection;Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;)V

    goto :goto_12

    .line 175
    :cond_29
    monitor-exit v1

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/pm/IntentFilterVerificationInfo;
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    if-eqz p0, :cond_1c

    .line 101
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->isAttached()Z

    move-result p1

    if-nez p1, :cond_1c

    .line 102
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->markAttached()V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->getInfo()Landroid/content/pm/IntentFilterVerificationInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 105
    :cond_1c
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public writeSettings(Landroid/util/TypedXmlSerializer;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-static {p1}, Lcom/android/server/pm/SettingsXml;->serializer(Landroid/util/TypedXmlSerializer;)Lcom/android/server/pm/SettingsXml$Serializer;

    move-result-object p1

    :try_start_4
    const-string v0, "domain-verifications-legacy"

    .line 124
    invoke-virtual {p1, v0}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_93

    .line 125
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_87

    .line 126
    :try_start_d
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_7a

    .line 128
    iget-object v5, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;

    .line 129
    invoke-virtual {v5}, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings$LegacyState;->getUserStates()Landroid/util/SparseIntArray;

    move-result-object v5

    if-nez v5, :cond_26

    goto :goto_6b

    .line 134
    :cond_26
    iget-object v6, p0, Lcom/android/server/pm/verify/domain/DomainVerificationLegacySettings;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v7, "user-states"

    .line 136
    invoke-virtual {p1, v7}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v7

    const-string/jumbo v8, "packageName"

    .line 137
    invoke-interface {v7, v8, v6}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v6
    :try_end_3c
    .catchall {:try_start_d .. :try_end_3c} :catchall_84

    .line 138
    :try_start_3c
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    move v8, v3

    :goto_41
    if-ge v8, v7, :cond_66

    .line 141
    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    .line 142
    invoke-virtual {v5, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v10

    const-string/jumbo v11, "user-state"

    .line 143
    invoke-interface {v6, v11}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v11

    const-string/jumbo v12, "userId"

    .line 144
    invoke-interface {v11, v12, v9}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v9

    const-string/jumbo v11, "state"

    .line 145
    invoke-interface {v9, v11, v10}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v9

    .line 146
    invoke-interface {v9}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_63
    .catchall {:try_start_3c .. :try_end_63} :catchall_6e

    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    :cond_66
    if-eqz v6, :cond_6b

    .line 148
    :try_start_68
    invoke-interface {v6}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_84

    :cond_6b
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :catchall_6e
    move-exception p0

    if-eqz v6, :cond_79

    .line 135
    :try_start_71
    invoke-interface {v6}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_75

    goto :goto_79

    :catchall_75
    move-exception v2

    :try_start_76
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_79
    :goto_79
    throw p0

    .line 150
    :cond_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_84

    if-eqz v0, :cond_80

    .line 151
    :try_start_7d
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_93

    .line 152
    :cond_80
    invoke-virtual {p1}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V

    return-void

    :catchall_84
    move-exception p0

    .line 150
    :try_start_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    :try_start_86
    throw p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_87

    :catchall_87
    move-exception p0

    if-eqz v0, :cond_92

    .line 123
    :try_start_8a
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    :catchall_8e
    move-exception v0

    :try_start_8f
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_92
    :goto_92
    throw p0
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_93

    :catchall_93
    move-exception p0

    if-eqz p1, :cond_9e

    .line 122
    :try_start_96
    invoke-virtual {p1}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_9a

    goto :goto_9e

    :catchall_9a
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_9e
    :goto_9e
    throw p0
.end method
