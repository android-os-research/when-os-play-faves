.class public Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
.super Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
.source "ParsedServiceImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedService;
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
            "Lcom/android/server/pm/pkg/component/ParsedServiceImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public foregroundServiceType:I

.field public permission:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedServiceImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 118
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    .line 119
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    .line 120
    iput-object p2, p0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    .line 83
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/pkg/component/ParsedServiceImpl;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>(Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V

    .line 45
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    .line 46
    iget-object p1, p1, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

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

.method public getForegroundServiceType()I
    .registers 1

    .line 127
    iget p0, p0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    return p0
.end method

.method public getPermission()Ljava/lang/String;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public setForegroundServiceType(I)Lcom/android/server/pm/pkg/component/ParsedServiceImpl;
    .registers 2

    .line 137
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponent;
    .registers 3

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    :goto_c
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Service{"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7d

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 72
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 73
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->foregroundServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedServiceImpl;->permission:Ljava/lang/String;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    return-void
.end method
