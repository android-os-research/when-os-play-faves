.class public Lcom/android/server/asks/UnknownStore;
.super Ljava/lang/Object;
.source "UnknownStore.java"


# static fields
.field public static final EXECUTE_ALLOW:I = 0x1f9

.field public static final EXECUTE_BLOCK:I = 0x1f8

.field public static final NEED_TO_CHECK_HASH:I = 0x1

.field public static final NEED_TO_CHECK_PEM:I = 0x2

.field public static final TARGET_ALL:I = 0x1f5

.field public static final TARGET_DEFAULT:I = 0x1f4

.field public static final TARGET_NONURL:I = 0x1f6

.field public static final TARGET_URL:I = 0x1f7

.field public static final THIS_IS_NOT_TARGET:I = 0x4

.field public static final THIS_IS_TARGET:I


# instance fields
.field public KEY_VALUE:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public blockPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/PEMINFO;",
            ">;"
        }
    .end annotation
.end field

.field public certPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/PKGINFO;",
            ">;>;"
        }
    .end annotation
.end field

.field public defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

.field public exceptPkgName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public executeBlockPkgName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public warningPermissions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/PEMINFO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "PackageInformation_store"

    .line 122
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->KEY_VALUE:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 126
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    .line 127
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 129
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 130
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 132
    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_2d

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_27

    const/4 v0, 0x4

    if-eq p0, v0, :cond_24

    packed-switch p0, :pswitch_data_30

    const/4 p0, 0x0

    return-object p0

    :pswitch_10
    const-string p0, "allow(E)"

    return-object p0

    :pswitch_13
    const-string p0, "block(E)"

    return-object p0

    :pswitch_16
    const-string/jumbo p0, "url"

    return-object p0

    :pswitch_1a
    const-string/jumbo p0, "local"

    return-object p0

    :pswitch_1e
    const-string p0, "all"

    return-object p0

    :pswitch_21
    const-string p0, "TARGET_DEFAULT"

    return-object p0

    :cond_24
    const-string p0, "THIS_IS_NOT_TARGET"

    return-object p0

    :cond_27
    const-string p0, "NEED_TO_CHECK_PEM"

    return-object p0

    :cond_2a
    const-string p0, "NEED_TO_CHECK_HASH"

    return-object p0

    :cond_2d
    const-string p0, "This is Target"

    return-object p0

    :pswitch_data_30
    .packed-switch 0x1f4
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public addCertPolicy(Ljava/lang/String;IIILjava/lang/String;II)V
    .registers 16

    const-string v0, "ALL"

    .line 269
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p6

    move v5, p7

    .line 270
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/asks/UnknownStore;->addDefaultPolicy(IIIII)V

    goto/16 :goto_b5

    .line 273
    :cond_19
    iget-object v1, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-nez v1, :cond_24

    .line 274
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    .line 276
    :cond_24
    iget-object v1, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-eqz v1, :cond_b5

    if-eqz p1, :cond_b5

    if-eqz p5, :cond_b5

    .line 278
    new-instance v1, Lcom/android/server/asks/PKGINFO;

    invoke-direct {v1}, Lcom/android/server/asks/PKGINFO;-><init>()V

    .line 286
    iget-object v2, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-eqz v2, :cond_6a

    const/16 v3, 0x1f4

    if-ne p2, v3, :cond_3c

    .line 288
    iget p2, v2, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    goto :goto_58

    :cond_3c
    const/16 v2, 0x1f8

    if-ne p2, v2, :cond_58

    .line 290
    iget-object v2, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    if-nez v2, :cond_4b

    .line 291
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 293
    :cond_4b
    iget-object v2, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_58

    .line 294
    iget-object v2, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_58
    :goto_58
    if-ne p6, v3, :cond_5e

    .line 300
    iget-object p6, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget p6, p6, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    :cond_5e
    if-ne p7, v3, :cond_64

    .line 303
    iget-object p7, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget p7, p7, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    :cond_64
    if-ne p3, v3, :cond_6a

    .line 306
    iget-object p3, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget p3, p3, Lcom/android/server/asks/PKGINFO;->SA:I

    :cond_6a
    move v4, p2

    move v5, p3

    move v6, p6

    move v7, p7

    if-nez p4, :cond_88

    .line 311
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    if-nez p2, :cond_7b

    .line 312
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 314
    :cond_7b
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_88

    .line 315
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_88
    move-object v2, v1

    move v3, p4

    .line 319
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/asks/PKGINFO;->set(IIIII)V

    .line 321
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 322
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    goto :goto_a3

    .line 324
    :cond_9e
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 326
    :goto_a3
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_ad

    .line 327
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b0

    .line 329
    :cond_ad
    invoke-virtual {p2, p5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :goto_b0
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b5
    :goto_b5
    return-void
.end method

.method public final addDefaultPolicy(IIIII)V
    .registers 15

    .line 226
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-nez v0, :cond_61

    .line 227
    new-instance v0, Lcom/android/server/asks/PKGINFO;

    invoke-direct {v0}, Lcom/android/server/asks/PKGINFO;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    const-string v0, "ALL"

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_14

    const/16 p1, 0x1f9

    goto :goto_30

    :cond_14
    const/16 v2, 0x1f8

    if-ne p1, v2, :cond_30

    .line 237
    iget-object v2, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    if-nez v2, :cond_23

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    .line 240
    :cond_23
    iget-object v2, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 241
    iget-object v2, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_30
    :goto_30
    move v5, p1

    const/16 p1, 0x1f5

    if-ne p4, v1, :cond_37

    move v7, p1

    goto :goto_38

    :cond_37
    move v7, p4

    :goto_38
    if-ne p5, v1, :cond_3c

    move v8, p1

    goto :goto_3d

    :cond_3c
    move v8, p5

    :goto_3d
    if-ne p2, v1, :cond_40

    const/4 p2, 0x0

    :cond_40
    move v6, p2

    if-nez p3, :cond_5b

    .line 256
    iget-object p1, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    if-nez p1, :cond_4e

    .line 257
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    .line 259
    :cond_4e
    iget-object p1, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5b

    .line 260
    iget-object p1, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_5b
    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    move v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/asks/PKGINFO;->set(IIIII)V

    :cond_61
    return-void
.end method

.method public addPermission(Ljava/lang/String;ZIIIIII)V
    .registers 16

    .line 338
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    .line 341
    :cond_b
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-nez v0, :cond_16

    .line 342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    :cond_16
    if-eqz p2, :cond_1b

    .line 347
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    goto :goto_1d

    .line 349
    :cond_1b
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    :goto_1d
    if-eqz p0, :cond_37

    .line 352
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_37

    .line 353
    new-instance p2, Lcom/android/server/asks/PEMINFO;

    invoke-direct {p2}, Lcom/android/server/asks/PEMINFO;-><init>()V

    move-object v0, p2

    move v1, p4

    move v2, p5

    move v3, p3

    move v4, p6

    move v5, p7

    move v6, p8

    .line 354
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/PEMINFO;->set(IIIIII)V

    .line 355
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    return-void
.end method

.method public checkPolicy(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    .registers 11

    .line 362
    iget-object v2, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-nez v2, :cond_24

    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-nez v3, :cond_24

    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-nez v3, :cond_24

    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-eqz v3, :cond_24

    const/4 v1, 0x0

    .line 363
    iget v2, v3, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v4, v3, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v5, v3, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v6, v3, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v7, v3, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v0, p2

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_24
    if-eqz p1, :cond_a7

    if-eqz p2, :cond_a7

    const-string v3, "PackageInformation_store"

    if-eqz v2, :cond_79

    .line 370
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 371
    iget-object v2, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_79

    .line 373
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_6e

    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6e

    .line 374
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/PKGINFO;

    if-eqz v1, :cond_79

    const-string v0, "checkPolicy() : Target"

    .line 376
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 377
    iget v3, v1, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v4, v1, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v5, v1, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v6, v1, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v7, v1, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v0, p2

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_6e
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    .line 381
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    .line 387
    :cond_79
    iget-object v1, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-eqz v1, :cond_8c

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    .line 388
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    .line 393
    :cond_8c
    iget-object v1, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-eqz v1, :cond_a7

    const-string v1, "checkPolicy() : Default"

    .line 394
    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 395
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v2, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v3, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v4, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v5, v0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v6, v0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_a7
    if-eqz p2, :cond_b3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    .line 402
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    :cond_b3
    return-void
.end method

.method public checkPolicyWithAppHash(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    .registers 14

    .line 407
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-eqz v0, :cond_74

    if-eqz p1, :cond_74

    if-eqz p2, :cond_74

    if-eqz p3, :cond_74

    .line 408
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 409
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    if-eqz p1, :cond_74

    .line 411
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "checkPolicyWithDetail() : Target"

    const-string v2, "PackageInformation_store"

    if-eqz v0, :cond_3f

    .line 412
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/asks/PKGINFO;

    if-eqz p0, :cond_74

    .line 414
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 415
    iget v5, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v6, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v7, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v8, p0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v9, p0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v3, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    goto :goto_74

    .line 418
    :cond_3f
    iget-object p2, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    if-eqz p2, :cond_52

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-eqz p0, :cond_52

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p3

    .line 419
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_52
    const-string p0, "ALL"

    .line 422
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_74

    .line 423
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/asks/PKGINFO;

    if-eqz p0, :cond_74

    .line 425
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .line 426
    iget v5, p0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v6, p0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v7, p0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v8, p0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v9, p0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v3, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    :cond_74
    :goto_74
    return-void
.end method

.method public checkPolicyWithPEM([Ljava/lang/String;IZLcom/android/server/asks/RETVALUE;)V
    .registers 16

    if-eqz p4, :cond_11d

    .line 440
    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    const-string v4, "PackageInformation_store"

    if-eqz v3, :cond_f8

    iget-object v3, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    if-eqz v3, :cond_f8

    if-eqz p1, :cond_f8

    const/4 v3, 0x0

    move v5, v3

    .line 441
    :goto_10
    array-length v6, p1

    const/16 v7, 0x1f5

    const/16 v8, 0x1f7

    const/16 v9, 0x1f6

    if-ge v5, v6, :cond_85

    .line 442
    iget-object v6, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    aget-object v10, p1, v5

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 443
    iget-object v6, p0, Lcom/android/server/asks/UnknownStore;->blockPermissions:Ljava/util/HashMap;

    aget-object v10, p1, v5

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/asks/PEMINFO;

    if-eqz v6, :cond_82

    .line 445
    iget v10, v6, Lcom/android/server/asks/PEMINFO;->MIN:I

    if-gt v10, p2, :cond_82

    iget v10, v6, Lcom/android/server/asks/PEMINFO;->MAX:I

    if-gt p2, v10, :cond_82

    .line 446
    iget v10, v6, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    if-ne v10, v9, :cond_52

    if-nez p3, :cond_52

    const-string v0, "checkPolicywithPem(B) : Target(local)"

    .line 447
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 448
    iget v2, v6, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v6, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v4, 0x1f9

    iget v5, v6, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v6, v6, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object v0, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_52
    if-ne v10, v8, :cond_6b

    if-eqz p3, :cond_6b

    const-string v0, "checkPolicywithPem(B) : Target(url)"

    .line 451
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 452
    iget v2, v6, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v6, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v4, 0x1f9

    iget v5, v6, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v6, v6, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object v0, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_6b
    if-ne v10, v7, :cond_82

    const-string v0, "checkPolicywithPem(B) : Target"

    .line 455
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 456
    iget v2, v6, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v6, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v4, 0x1f9

    iget v5, v6, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v6, v6, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object v0, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_82
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 463
    :cond_85
    :goto_85
    array-length v5, p1

    if-ge v3, v5, :cond_f8

    .line 464
    iget-object v5, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f5

    .line 465
    iget-object v5, p0, Lcom/android/server/asks/UnknownStore;->warningPermissions:Ljava/util/HashMap;

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/asks/PEMINFO;

    .line 466
    iget v6, v5, Lcom/android/server/asks/PEMINFO;->MIN:I

    if-gt v6, p2, :cond_f5

    iget v6, v5, Lcom/android/server/asks/PEMINFO;->MAX:I

    if-gt p2, v6, :cond_f5

    .line 467
    iget v6, v5, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    if-ne v6, v9, :cond_c1

    if-nez p3, :cond_c1

    const-string v0, "checkPolicywithPem(Wa) : Target(local)"

    .line 468
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 469
    iget v2, v5, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v5, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v4, 0x1f9

    iget v6, v5, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v5, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object v0, p4

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_c1
    if-ne v6, v8, :cond_dc

    if-eqz p3, :cond_dc

    const-string v0, "checkPolicywithPem(Wa) : Target(url)"

    .line 472
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 473
    iget v2, v5, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v5, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v4, 0x1f9

    iget v6, v5, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v5, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object v0, p4

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_dc
    if-ne v6, v7, :cond_f5

    const-string v0, "checkPolicywithPem(Wa) : Target"

    .line 476
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 477
    iget v2, v5, Lcom/android/server/asks/PEMINFO;->policy:I

    iget v3, v5, Lcom/android/server/asks/PEMINFO;->SA:I

    const/16 v4, 0x1f9

    iget v6, v5, Lcom/android/server/asks/PEMINFO;->policyTarget:I

    iget v7, v5, Lcom/android/server/asks/PEMINFO;->reportedTarget:I

    move-object v0, p4

    move v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_f5
    add-int/lit8 v3, v3, 0x1

    goto :goto_85

    .line 485
    :cond_f8
    iget-object v1, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-eqz v1, :cond_113

    const-string v1, "checkPolicywithPem : Default"

    .line 486
    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 487
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    iget v2, v0, Lcom/android/server/asks/PKGINFO;->policy:I

    iget v3, v0, Lcom/android/server/asks/PKGINFO;->SA:I

    iget v4, v0, Lcom/android/server/asks/PKGINFO;->isExecuteBlock:I

    iget v5, v0, Lcom/android/server/asks/PKGINFO;->policyTarget:I

    iget v6, v0, Lcom/android/server/asks/PKGINFO;->reportedTarget:I

    move-object v0, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    return-void

    :cond_113
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p4

    .line 493
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    :cond_11d
    return-void
.end method

.method public getExceptList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 196
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getExcuteBlockList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->KEY_VALUE:Ljava/lang/String;

    return-object p0
.end method

.method public isTargetExcept(Ljava/lang/String;)Z
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    const-string v1, "ALL"

    .line 215
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->exceptPkgName:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isTargetExcuteBlock(Ljava/lang/String;)Z
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    const-string v1, "ALL"

    .line 203
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/server/asks/UnknownStore;->executeBlockPkgName:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public setKey(Ljava/lang/String;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/android/server/asks/UnknownStore;->KEY_VALUE:Ljava/lang/String;

    return-void
.end method
