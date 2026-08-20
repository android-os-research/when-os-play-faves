.class final Lcom/android/i18n/phonenumbers/SingleFileMetadataSourceImpl;
.super Ljava/lang/Object;
.source "SingleFileMetadataSourceImpl.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/MetadataSource;


# instance fields
.field private final blacklist metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

.field private final blacklist phoneNumberMetadataFileName:Ljava/lang/String;

.field private final blacklist phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/phonenumbers/MetadataLoader;)V
    .registers 3
    .param p1, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;

    .line 46
    const-string v0, "/com/android/i18n/phonenumbers/data/SingleFilePhoneNumberMetadataProto"

    invoke-direct {p0, v0, p1}, Lcom/android/i18n/phonenumbers/SingleFileMetadataSourceImpl;-><init>(Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)V

    .line 47
    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)V
    .registers 4
    .param p1, "phoneNumberMetadataFileName"    # Ljava/lang/String;
    .param p2, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 40
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataFileName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/SingleFileMetadataSourceImpl;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 5
    .param p1, "countryCallingCode"    # I

    .line 63
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/SingleFileMetadataSourceImpl;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    invoke-static {v0, v1, v2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getSingleFileMetadataMaps(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;->get(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public blacklist getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 5
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataRef:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/SingleFileMetadataSourceImpl;->phoneNumberMetadataFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/SingleFileMetadataSourceImpl;->metadataLoader:Lcom/android/i18n/phonenumbers/MetadataLoader;

    invoke-static {v0, v1, v2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getSingleFileMetadataMaps(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/MetadataManager$SingleFileMetadataMaps;->get(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 51
    return-object v0
.end method
