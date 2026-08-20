.class public Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;
.super Ljava/lang/Object;
.source "LegacyRuntimeManifestParseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationReplacement"
.end annotation


# static fields
.field public static COERCED_LABEL:Ljava/lang/String; = "coerced_label"

.field public static ENABLED:Ljava/lang/String; = "enabled"

.field public static ICON:Ljava/lang/String; = "icon"

.field public static LABEL:Ljava/lang/String; = "label"


# instance fields
.field public mCandidates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCoercedLabel:Ljava/lang/CharSequence;

.field public mEnabled:Z

.field public mIcon:I

.field public mLabel:I


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    .line 46
    iput v0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public getCoercedLabel()Ljava/lang/CharSequence;
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEnabled()Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    return p0
.end method

.method public getIconRes()I
    .registers 1

    .line 79
    iget p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    return p0
.end method

.method public getLabelRes()I
    .registers 1

    .line 71
    iget p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    return p0
.end method

.method public hasCoercedLabel()Z
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->COERCED_LABEL:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasEnabled()Z
    .registers 2

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ENABLED:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasIcon()Z
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ICON:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasLabel()Z
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object v0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->LABEL:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setCoercedLabel(Ljava/lang/CharSequence;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCoercedLabel:Ljava/lang/CharSequence;

    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->COERCED_LABEL:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mEnabled:Z

    .line 67
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ENABLED:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setIconRes(I)V
    .registers 2

    .line 61
    iput p1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mIcon:I

    .line 62
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->ICON:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLabelRes(I)V
    .registers 2

    .line 51
    iput p1, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mLabel:I

    .line 52
    iget-object p0, p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->mCandidates:Ljava/util/Set;

    sget-object p1, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->LABEL:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
