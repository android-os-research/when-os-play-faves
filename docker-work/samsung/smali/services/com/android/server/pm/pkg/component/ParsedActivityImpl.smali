.class public Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
.super Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
.source "ParsedActivityImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedActivity;
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/pkg/component/ParsedActivityImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public colorMode:I

.field public configChanges:I

.field public documentLaunchMode:I

.field public launchMode:I

.field public lockTaskLaunchMode:I

.field public mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public maxAspectRatio:F

.field public maxRecents:I

.field public minAspectRatio:F

.field public parentActivityName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public persistableMode:I

.field public privateFlags:I

.field public requestedVrComponent:Ljava/lang/String;

.field public resizeMode:I

.field public rotationAnimation:I

.field public screenOrientation:I

.field public softInputMode:I

.field public supportsSizeChanges:Z

.field public targetActivity:Ljava/lang/String;

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I

.field public windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 356
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 321
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    const/4 v1, 0x2

    .line 84
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 86
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 87
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 93
    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;IIIIIIIIIFFZLjava/lang/String;IILandroid/content/pm/ActivityInfo$WindowLayout;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IIIIIIIIIFFZ",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 409
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    move v1, p1

    .line 410
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    move v1, p2

    .line 411
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    move-object v1, p3

    .line 412
    iput-object v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    move-object v1, p4

    .line 413
    iput-object v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    move-object v1, p5

    .line 414
    iput-object v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    move v1, p6

    .line 415
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    move-object v1, p7

    .line 416
    iput-object v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    move-object v1, p8

    .line 417
    iput-object v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    move v1, p9

    .line 418
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    move v1, p10

    .line 419
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    move v1, p11

    .line 420
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    move v1, p12

    .line 421
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    move v1, p13

    .line 422
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    move/from16 v1, p14

    .line 423
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    move/from16 v1, p15

    .line 424
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    move/from16 v1, p16

    .line 425
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    move/from16 v1, p17

    .line 426
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    move/from16 v1, p18

    .line 427
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    move/from16 v1, p19

    .line 428
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    move/from16 v1, p20

    .line 429
    iput-boolean v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    move-object/from16 v1, p21

    .line 430
    iput-object v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    move/from16 v1, p22

    .line 431
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    move/from16 v1, p23

    .line 432
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    move-object/from16 v1, p24

    .line 433
    iput-object v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 325
    const-class v0, Ljava/lang/Float;

    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>(Landroid/os/Parcel;)V

    const/4 v1, -0x1

    .line 83
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    const/4 v2, 0x2

    .line 84
    iput v2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 86
    iput v2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 87
    iput v2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 93
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 332
    sget-object v1, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 342
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 343
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 350
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 352
    :cond_c1
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/pkg/component/ParsedActivityImpl;)V
    .registers 4

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>(Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    const/4 v1, 0x2

    .line 84
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 86
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 87
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 93
    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 101
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 102
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 103
    iget-object v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 106
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 107
    iget-object v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    .line 108
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 109
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 110
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 111
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 112
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 113
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    .line 114
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 115
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 116
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 117
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 118
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 119
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 120
    iget-object v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 121
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 122
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    .line 123
    iget-object v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 124
    iget-object p1, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    return-void
.end method

.method public static makeAlias(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 4

    .line 162
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>()V

    .line 163
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setPackageName(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setTargetActivity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 165
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 166
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getFlags()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 167
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 168
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIcon()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setIcon(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 169
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getLogo()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setLogo(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 170
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getBanner()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setBanner(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 171
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getLabelRes()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setLabelRes(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 172
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 173
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 174
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 175
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 176
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getDescriptionRes()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setDescriptionRes(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 177
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 178
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 179
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 180
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 181
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 182
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 183
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 184
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 185
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 186
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 187
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result p0

    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 188
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 189
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 190
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 191
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    return-object v0
.end method

.method public static makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 7

    .line 134
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>()V

    .line 135
    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setPackageName(Ljava/lang/String;)V

    const p0, 0x1030055

    .line 136
    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    const/4 p0, 0x1

    .line 137
    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 138
    sget-object v1, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 139
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 140
    iput p2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 141
    iput-object p3, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    const/4 p1, 0x0

    .line 142
    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 143
    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 144
    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result p2

    iput p2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 145
    invoke-static {p1, p1}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->getActivityConfigChanges(II)I

    move-result p2

    iput p2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 146
    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 147
    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    const/4 p0, -0x1

    .line 148
    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    const/4 p2, 0x4

    .line 149
    iput p2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 150
    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 151
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 152
    iput p0, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 153
    iput p1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    if-eqz p4, :cond_4c

    .line 155
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getFlags()I

    move-result p0

    or-int/lit16 p0, p0, 0x200

    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    :cond_4c
    return-object v0
.end method


# virtual methods
.method public final __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getColorMode()I
    .registers 1

    .line 545
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    return p0
.end method

.method public getConfigChanges()I
    .registers 1

    .line 490
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    return p0
.end method

.method public getDocumentLaunchMode()I
    .registers 1

    .line 480
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    return p0
.end method

.method public getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-nez p0, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public getLaunchMode()I
    .registers 1

    .line 475
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    return p0
.end method

.method public getLockTaskLaunchMode()I
    .registers 1

    .line 505
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    return p0
.end method

.method public getMaxAspectRatio()F
    .registers 1

    .line 520
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    return p0
.end method

.method public getMaxRecents()I
    .registers 1

    .line 485
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    return p0
.end method

.method public getMinAspectRatio()F
    .registers 1

    .line 525
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    return p0
.end method

.method public getParentActivityName()Ljava/lang/String;
    .registers 1

    .line 455
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public getPermission()Ljava/lang/String;
    .registers 1

    .line 470
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public getPersistableMode()I
    .registers 1

    .line 500
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    return p0
.end method

.method public getPrivateFlags()I
    .registers 1

    .line 465
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    return p0
.end method

.method public getRequestedVrComponent()Ljava/lang/String;
    .registers 1

    .line 535
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    return-object p0
.end method

.method public getResizeMode()I
    .registers 1

    .line 515
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    return p0
.end method

.method public getRotationAnimation()I
    .registers 1

    .line 540
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    return p0
.end method

.method public getScreenOrientation()I
    .registers 1

    .line 510
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    return p0
.end method

.method public getSoftInputMode()I
    .registers 1

    .line 495
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    return p0
.end method

.method public getTargetActivity()Ljava/lang/String;
    .registers 1

    .line 450
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    return-object p0
.end method

.method public getTaskAffinity()Ljava/lang/String;
    .registers 1

    .line 460
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public getTheme()I
    .registers 1

    .line 440
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    return p0
.end method

.method public getUiOptions()I
    .registers 1

    .line 445
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    return p0
.end method

.method public getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;
    .registers 1

    .line 550
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    return-object p0
.end method

.method public isSupportsSizeChanges()Z
    .registers 1

    .line 530
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    return p0
.end method

.method public setColorMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 669
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    return-object p0
.end method

.method public setConfigChanges(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 603
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    return-object p0
.end method

.method public setDocumentLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 591
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    return-object p0
.end method

.method public setKnownActivityEmbeddingCerts(Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 264
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 265
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 266
    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_23
    return-void
.end method

.method public setLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 585
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    return-object p0
.end method

.method public setLockTaskLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 621
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    return-object p0
.end method

.method public setMaxAspectRatio(F)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 639
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    return-object p0
.end method

.method public setMaxAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_15

    :cond_7
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_13

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_13

    return-object p0

    .line 220
    :cond_13
    iput p2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    :cond_15
    :goto_15
    return-object p0
.end method

.method public setMaxRecents(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 597
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    return-object p0
.end method

.method public setMinAspectRatio(F)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 645
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    return-object p0
.end method

.method public setMinAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_15

    :cond_7
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p2, p1

    if-gez p1, :cond_13

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-eqz p1, :cond_13

    return-object p0

    .line 236
    :cond_13
    iput p2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    :cond_15
    :goto_15
    return-object p0
.end method

.method public setParentActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 567
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 3

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :goto_c
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public setPersistableMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 615
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    return-object p0
.end method

.method public setPrivateFlags(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 579
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    return-object p0
.end method

.method public setRequestedVrComponent(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 657
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    return-object p0
.end method

.method public setResizeMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 633
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    return-object p0
.end method

.method public setRotationAnimation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 663
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    return-object p0
.end method

.method public setScreenOrientation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 627
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    return-object p0
.end method

.method public setSoftInputMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 609
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    return-object p0
.end method

.method public setSupportsSizeChanges(Z)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 651
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    return-object p0
.end method

.method public setTargetActivity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    return-object p0
.end method

.method public setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 573
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    return-object p0
.end method

.method public setTheme(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 555
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    return-object p0
.end method

.method public setUiOptions(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 561
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    return-object p0
.end method

.method public setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2

    .line 675
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Activity{"

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7d

    .line 276
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 287
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 288
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 295
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 305
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 306
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_90

    const/4 v0, 0x1

    .line 313
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_94

    :cond_90
    const/4 v0, 0x0

    .line 316
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 318
    :goto_94
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    return-void
.end method
