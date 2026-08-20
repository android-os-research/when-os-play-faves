.class public Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;
.super Ljava/lang/Object;
.source "ParsedUsesPermissionImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedUsesPermission;
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
            "Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;",
            ">;"
        }
    .end annotation
.end field

.field public static sParcellingForName:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public name:Ljava/lang/String;

.field public usesPermissionFlags:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 101
    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    .line 102
    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_15

    .line 106
    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    .line 146
    :cond_15
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    invoke-interface {v0, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 135
    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    .line 136
    const-class v1, Landroid/annotation/NonNull;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 138
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    .line 139
    const-class p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermission$UsesPermissionFlags;

    invoke-static {p0, v2, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 5

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    .line 65
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 67
    iput p2, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    .line 68
    const-class p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermission$UsesPermissionFlags;

    invoke-static {p0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-void
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

.method public getName()Ljava/lang/String;
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getUsesPermissionFlags()I
    .registers 1

    .line 81
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    return p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;
    .registers 4

    .line 86
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    .line 87
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public setUsesPermissionFlags(I)Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;
    .registers 4

    .line 94
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    .line 95
    const-class v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermission$UsesPermissionFlags;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 117
    sget-object v0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    .line 118
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
