.class public Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;
.super Ljava/lang/Object;
.source "DomainVerificationPersistence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;
    }
.end annotation


# static fields
.field public static final ATTR_ALLOW_LINK_HANDLING:Ljava/lang/String; = "allowLinkHandling"

.field public static final ATTR_HAS_AUTO_VERIFY_DOMAINS:Ljava/lang/String; = "hasAutoVerifyDomains"

.field public static final ATTR_ID:Ljava/lang/String; = "id"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final ATTR_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final ATTR_STATE:Ljava/lang/String; = "state"

.field public static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field public static final TAG:Ljava/lang/String; = "DomainVerificationPersistence"

.field public static final TAG_ACTIVE:Ljava/lang/String; = "active"

.field public static final TAG_DOMAIN:Ljava/lang/String; = "domain"

.field public static final TAG_DOMAIN_VERIFICATIONS:Ljava/lang/String; = "domain-verifications"

.field public static final TAG_ENABLED_HOSTS:Ljava/lang/String; = "enabled-hosts"

.field public static final TAG_HOST:Ljava/lang/String; = "host"

.field public static final TAG_PACKAGE_STATE:Ljava/lang/String; = "package-state"

.field public static final TAG_RESTORED:Ljava/lang/String; = "restored"

.field public static final TAG_STATE:Ljava/lang/String; = "state"

.field public static final TAG_USER_STATE:Ljava/lang/String; = "user-state"

.field public static final TAG_USER_STATES:Ljava/lang/String; = "user-states"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPkgStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
    .registers 9

    const-string/jumbo v0, "packageName"

    .line 168
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "id"

    .line 169
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "hasAutoVerifyDomains"

    .line 170
    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v1, "signature"

    .line 171
    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    goto :goto_6a

    .line 175
    :cond_29
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 177
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 178
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 180
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 181
    :goto_3b
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 182
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v1, "user-states"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto :goto_3b

    .line 184
    :cond_5b
    invoke-static {p0, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readDomainStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    goto :goto_3b

    .line 187
    :cond_5f
    invoke-static {p0, v6}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/SparseArray;)V

    goto :goto_3b

    .line 192
    :cond_63
    new-instance p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;)V

    return-object p0

    :cond_6a
    :goto_6a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createUserStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .registers 5

    const-string/jumbo v0, "userId"

    .line 288
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    const/4 v1, 0x0

    const-string v2, "allowLinkHandling"

    .line 293
    invoke-interface {p0, v2, v1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 294
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 296
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    :goto_1c
    const-string v3, "enabled-hosts"

    .line 297
    invoke-interface {p0, v3}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 298
    invoke-static {p0, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readEnabledHosts(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArraySet;)V

    goto :goto_1c

    .line 301
    :cond_28
    new-instance p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(ILandroid/util/ArraySet;Z)V

    return-object p0
.end method

.method public static readDomainStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$ReadSection;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 209
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    :goto_4
    const-string v0, "domain"

    .line 210
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string/jumbo v0, "name"

    .line 211
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "state"

    .line 212
    invoke-interface {p0, v2, v1}, Lcom/android/server/pm/SettingsXml$ReadSection;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 213
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_23
    return-void
.end method

.method public static readEnabledHosts(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$ReadSection;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 306
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    :cond_4
    :goto_4
    const-string/jumbo v0, "host"

    .line 307
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "name"

    .line 308
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 310
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1e
    return-void
.end method

.method public static readFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 131
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 132
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 134
    invoke-static {p0}, Lcom/android/server/pm/SettingsXml;->parser(Landroid/util/TypedXmlPullParser;)Lcom/android/server/pm/SettingsXml$ReadSection;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    .line 135
    :goto_12
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 136
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "active"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    const-string/jumbo v3, "restored"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    goto :goto_12

    .line 141
    :cond_31
    invoke-static {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    goto :goto_12

    .line 138
    :cond_35
    invoke-static {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V

    goto :goto_12

    .line 146
    :cond_39
    new-instance p0, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence$ReadResult;-><init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-object p0
.end method

.method public static readPackageStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$ReadSection;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;)V"
        }
    .end annotation

    .line 151
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    :cond_4
    :goto_4
    const-string/jumbo v0, "package-state"

    .line 152
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 153
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->createPkgStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_1b
    return-void
.end method

.method public static readUserStates(Lcom/android/server/pm/SettingsXml$ReadSection;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$ReadSection;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            ">;)V"
        }
    .end annotation

    .line 198
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$ReadSection;->children()Lcom/android/server/pm/SettingsXml$ChildSection;

    move-result-object p0

    :cond_4
    :goto_4
    const-string/jumbo v0, "user-state"

    .line 199
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$ChildSection;->moveToNext(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 200
    invoke-static {p0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->createUserStateFromXml(Lcom/android/server/pm/SettingsXml$ReadSection;)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 202
    invoke-virtual {v0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getUserId()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_1b
    return-void
.end method

.method public static writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$WriteSection;",
            "Ljava/util/Collection<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 123
    :cond_7
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 124
    invoke-static {p0, v0, p2, p3}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePkgStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILjava/util/function/Function;)V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public static writePkgStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;ILjava/util/function/Function;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$WriteSection;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            "I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_8

    const/4 p3, 0x0

    goto :goto_e

    .line 222
    :cond_8
    invoke-interface {p3, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    :goto_e
    if-nez p3, :cond_14

    .line 227
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getBackupSignatureHash()Ljava/lang/String;

    move-result-object p3

    :cond_14
    const-string/jumbo v1, "package-state"

    .line 231
    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v1

    const-string/jumbo v2, "packageName"

    .line 232
    invoke-interface {v1, v2, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    .line 233
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "id"

    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    .line 235
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->isHasAutoVerifyDomains()Z

    move-result v1

    const-string/jumbo v2, "hasAutoVerifyDomains"

    .line 234
    invoke-interface {v0, v2, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0

    const-string/jumbo v1, "signature"

    .line 236
    invoke-interface {v0, v1, p3}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p3

    .line 237
    :try_start_43
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeStateMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V

    .line 238
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStates(Lcom/android/server/pm/SettingsXml$WriteSection;ILandroid/util/SparseArray;)V
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_57

    if-eqz p3, :cond_56

    .line 239
    invoke-interface {p3}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_56
    return-void

    :catchall_57
    move-exception p0

    if-eqz p3, :cond_62

    .line 230
    :try_start_5a
    invoke-interface {p3}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_62
    :goto_62
    throw p0
.end method

.method public static writeStateMap(Lcom/android/server/pm/SettingsXml$WriteSection;Landroid/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$WriteSection;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v0, "state"

    .line 270
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    .line 271
    :try_start_e
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_3c

    const-string v3, "domain"

    .line 273
    invoke-interface {p0, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    const-string/jumbo v4, "name"

    .line 274
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    .line 275
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    .line 276
    invoke-interface {v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_39
    .catchall {:try_start_e .. :try_end_39} :catchall_42

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_3c
    if-eqz p0, :cond_41

    .line 278
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_41
    return-void

    :catchall_42
    move-exception p1

    if-eqz p0, :cond_4d

    .line 270
    :try_start_45
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    throw p1
.end method

.method public static writeToXml(Landroid/util/TypedXmlSerializer;Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;ILjava/util/function/Function;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;",
            ">;I",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-static {p0}, Lcom/android/server/pm/SettingsXml;->serializer(Landroid/util/TypedXmlSerializer;)Lcom/android/server/pm/SettingsXml$Serializer;

    move-result-object p0

    :try_start_4
    const-string v0, "domain-verifications"

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_83

    .line 91
    :try_start_a
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 93
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_23

    .line 95
    invoke-virtual {p1, v4}, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 98
    :cond_23
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p1

    :goto_27
    if-ge v3, p1, :cond_35

    .line 100
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_35
    const-string p1, "active"

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_77

    .line 104
    :try_start_3b
    invoke-static {p1, v1, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_6b

    if-eqz p1, :cond_43

    .line 105
    :try_start_40
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_43
    const-string/jumbo p1, "restored"

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingsXml$Serializer;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p1
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_77

    .line 109
    :try_start_4a
    invoke-virtual {p3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-static {p1, p2, p4, p5}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writePackageStates(Lcom/android/server/pm/SettingsXml$WriteSection;Ljava/util/Collection;ILjava/util/function/Function;)V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_5f

    if-eqz p1, :cond_56

    .line 111
    :try_start_53
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_77

    :cond_56
    if-eqz v0, :cond_5b

    .line 112
    :try_start_58
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_83

    .line 113
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V

    return-void

    :catchall_5f
    move-exception p2

    if-eqz p1, :cond_6a

    .line 107
    :try_start_62
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception p1

    :try_start_67
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6a
    :goto_6a
    throw p2
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_77

    :catchall_6b
    move-exception p2

    if-eqz p1, :cond_76

    .line 103
    :try_start_6e
    invoke-interface {p1}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_72

    goto :goto_76

    :catchall_72
    move-exception p1

    :try_start_73
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_76
    :goto_76
    throw p2
    :try_end_77
    .catchall {:try_start_73 .. :try_end_77} :catchall_77

    :catchall_77
    move-exception p1

    if-eqz v0, :cond_82

    .line 85
    :try_start_7a
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_7e

    goto :goto_82

    :catchall_7e
    move-exception p2

    :try_start_7f
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_82
    :goto_82
    throw p1
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_83

    :catchall_83
    move-exception p1

    if-eqz p0, :cond_8e

    .line 84
    :try_start_86
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$Serializer;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8e
    :goto_8e
    throw p1
.end method

.method public static writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "user-state"

    .line 318
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    .line 319
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getUserId()I

    move-result v0

    const-string/jumbo v1, "userId"

    invoke-interface {p0, v1, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;I)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    .line 321
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->isLinkHandlingAllowed()Z

    move-result v0

    const-string v1, "allowLinkHandling"

    .line 320
    invoke-interface {p0, v1, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Z)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    .line 322
    :try_start_1c
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;->getEnabledHosts()Landroid/util/ArraySet;

    move-result-object p1

    .line 323
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v0, "enabled-hosts"

    .line 325
    invoke-interface {p0, v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_1c .. :try_end_2c} :catchall_65

    .line 326
    :try_start_2c
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_31
    if-ge v2, v1, :cond_4d

    const-string/jumbo v3, "host"

    .line 328
    invoke-interface {v0, v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    const-string/jumbo v4, "name"

    .line 329
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/android/server/pm/SettingsXml$WriteSection;->attribute(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object v3

    .line 330
    invoke-interface {v3}, Lcom/android/server/pm/SettingsXml$WriteSection;->finish()V
    :try_end_4a
    .catchall {:try_start_2c .. :try_end_4a} :catchall_53

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_4d
    if-eqz v0, :cond_5f

    .line 332
    :try_start_4f
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_65

    goto :goto_5f

    :catchall_53
    move-exception p1

    if-eqz v0, :cond_5e

    .line 324
    :try_start_56
    invoke-interface {v0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    goto :goto_5e

    :catchall_5a
    move-exception v0

    :try_start_5b
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5e
    :goto_5e
    throw p1
    :try_end_5f
    .catchall {:try_start_5b .. :try_end_5f} :catchall_65

    :cond_5f
    :goto_5f
    if-eqz p0, :cond_64

    .line 334
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_64
    return-void

    :catchall_65
    move-exception p1

    if-eqz p0, :cond_70

    .line 317
    :try_start_68
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_70
    :goto_70
    throw p1
.end method

.method public static writeUserStates(Lcom/android/server/pm/SettingsXml$WriteSection;ILandroid/util/SparseArray;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/SettingsXml$WriteSection;",
            "I",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string/jumbo v1, "user-states"

    .line 250
    invoke-interface {p0, v1}, Lcom/android/server/pm/SettingsXml$WriteSection;->startSection(Ljava/lang/String;)Lcom/android/server/pm/SettingsXml$WriteSection;

    move-result-object p0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_20

    const/4 p1, 0x0

    :goto_12
    if-ge p1, v0, :cond_2b

    .line 253
    :try_start_14
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-static {p0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    .line 256
    :cond_20
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    if-eqz p1, :cond_2b

    .line 258
    invoke-static {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationPersistence;->writeUserStateToXml(Lcom/android/server/pm/SettingsXml$WriteSection;Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;)V
    :try_end_2b
    .catchall {:try_start_14 .. :try_end_2b} :catchall_31

    :cond_2b
    if-eqz p0, :cond_30

    .line 261
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V

    :cond_30
    return-void

    :catchall_31
    move-exception p1

    if-eqz p0, :cond_3c

    .line 250
    :try_start_34
    invoke-interface {p0}, Lcom/android/server/pm/SettingsXml$WriteSection;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_38

    goto :goto_3c

    :catchall_38
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3c
    :goto_3c
    throw p1
.end method
