.class public Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;
.super Lcom/android/server/pm/pkg/component/ParsedComponentImpl;
.source "ParsedInstrumentationImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedInstrumentation;
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
            "Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public functionalTest:Z

.field public handleProfiling:Z

.field public targetPackage:Ljava/lang/String;

.field public targetProcesses:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 93
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 86
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    .line 87
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    move v0, v1

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_28

    :cond_27
    move v1, v2

    :goto_28
    iput-boolean v1, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .registers 5

    .line 126
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;-><init>()V

    .line 127
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    .line 129
    iput-boolean p3, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    .line 130
    iput-boolean p4, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

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

.method public getTargetPackage()Ljava/lang/String;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetProcesses()Ljava/lang/String;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    return-object p0
.end method

.method public isFunctionalTest()Z
    .registers 1

    .line 152
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

    return p0
.end method

.method public isHandleProfiling()Z
    .registers 1

    .line 147
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    return p0
.end method

.method public setFunctionalTest(Z)Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;
    .registers 2

    .line 163
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

    return-object p0
.end method

.method public setHandleProfiling(Z)Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;
    .registers 2

    .line 157
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    return-object p0
.end method

.method public setTargetPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;
    .registers 2

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetProcesses(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;
    .registers 2

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Instrumentation{"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x7d

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 77
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 79
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->targetProcesses:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 80
    iget-boolean p2, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->handleProfiling:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 81
    iget-boolean p0, p0, Lcom/android/server/pm/pkg/component/ParsedInstrumentationImpl;->functionalTest:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
