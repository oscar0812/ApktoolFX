.class public Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;
.super Ljava/lang/Object;
.source "EncryptionKeyEmojifier.java"


# static fields
.field private static final emojis:[Ljava/lang/String;

.field private static final offsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 8
    const/16 v0, 0x14d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\ud83d\ude09"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "\ud83d\ude0d"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "\ud83d\ude1b"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "\ud83d\ude2d"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "\ud83d\ude31"

    aput-object v2, v0, v1

    const-string/jumbo v1, "\ud83d\ude21"

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-string/jumbo v2, "\ud83d\ude0e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\ud83d\ude34"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\ud83d\ude35"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\ud83d\ude08"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\ud83d\ude2c"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\ud83d\ude07"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "\ud83d\ude0f"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "\ud83d\udc6e"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "\ud83d\udc77"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "\ud83d\udc82"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "\ud83d\udc76"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "\ud83d\udc68"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "\ud83d\udc69"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "\ud83d\udc74"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "\ud83d\udc75"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "\ud83d\ude3b"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "\ud83d\ude3d"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "\ud83d\ude40"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "\ud83d\udc7a"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "\ud83d\ude48"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "\ud83d\ude49"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "\ud83d\ude4a"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "\ud83d\udc80"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "\ud83d\udc7d"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "\ud83d\udca9"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "\ud83d\udd25"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "\ud83d\udca5"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "\ud83d\udca4"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "\ud83d\udc42"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "\ud83d\udc40"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "\ud83d\udc43"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "\ud83d\udc45"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "\ud83d\udc44"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "\ud83d\udc4d"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "\ud83d\udc4e"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "\ud83d\udc4c"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "\ud83d\udc4a"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "\u270c"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "\u270b"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "\ud83d\udc50"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "\ud83d\udc46"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "\ud83d\udc47"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "\ud83d\udc49"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "\ud83d\udc48"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "\ud83d\ude4f"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "\ud83d\udc4f"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "\ud83d\udcaa"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "\ud83d\udeb6"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "\ud83c\udfc3"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "\ud83d\udc83"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "\ud83d\udc6b"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "\ud83d\udc6a"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "\ud83d\udc6c"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "\ud83d\udc6d"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "\ud83d\udc85"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "\ud83c\udfa9"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "\ud83d\udc51"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "\ud83d\udc52"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "\ud83d\udc5f"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "\ud83d\udc5e"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "\ud83d\udc60"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "\ud83d\udc55"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "\ud83d\udc57"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "\ud83d\udc56"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "\ud83d\udc59"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "\ud83d\udc5c"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "\ud83d\udc53"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "\ud83c\udf80"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "\ud83d\udc84"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "\ud83d\udc9b"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "\ud83d\udc99"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "\ud83d\udc9c"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "\ud83d\udc9a"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "\ud83d\udc8d"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "\ud83d\udc8e"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "\ud83d\udc36"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "\ud83d\udc3a"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "\ud83d\udc31"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "\ud83d\udc2d"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "\ud83d\udc39"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "\ud83d\udc30"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "\ud83d\udc38"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "\ud83d\udc2f"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "\ud83d\udc28"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "\ud83d\udc3b"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "\ud83d\udc37"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "\ud83d\udc2e"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "\ud83d\udc17"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "\ud83d\udc34"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string/jumbo v2, "\ud83d\udc11"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string/jumbo v2, "\ud83d\udc18"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string/jumbo v2, "\ud83d\udc3c"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "\ud83d\udc27"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string/jumbo v2, "\ud83d\udc25"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string/jumbo v2, "\ud83d\udc14"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string/jumbo v2, "\ud83d\udc0d"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "\ud83d\udc22"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "\ud83d\udc1b"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "\ud83d\udc1d"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "\ud83d\udc1c"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string/jumbo v2, "\ud83d\udc1e"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "\ud83d\udc0c"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "\ud83d\udc19"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "\ud83d\udc1a"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "\ud83d\udc1f"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "\ud83d\udc2c"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "\ud83d\udc0b"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v2, "\ud83d\udc10"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v2, "\ud83d\udc0a"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "\ud83d\udc2b"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "\ud83c\udf40"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "\ud83c\udf39"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "\ud83c\udf3b"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "\ud83c\udf41"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "\ud83c\udf3e"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "\ud83c\udf44"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "\ud83c\udf35"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "\ud83c\udf34"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string/jumbo v2, "\ud83c\udf33"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string/jumbo v2, "\ud83c\udf1e"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string/jumbo v2, "\ud83c\udf1a"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string/jumbo v2, "\ud83c\udf19"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string/jumbo v2, "\ud83c\udf0e"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string/jumbo v2, "\ud83c\udf0b"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string/jumbo v2, "\u26a1"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string/jumbo v2, "\u2614"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string/jumbo v2, "\u2744"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string/jumbo v2, "\u26c4"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string/jumbo v2, "\ud83c\udf00"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string/jumbo v2, "\ud83c\udf08"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string/jumbo v2, "\ud83c\udf0a"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string/jumbo v2, "\ud83c\udf93"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string/jumbo v2, "\ud83c\udf86"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string/jumbo v2, "\ud83c\udf83"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string/jumbo v2, "\ud83d\udc7b"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string/jumbo v2, "\ud83c\udf85"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string/jumbo v2, "\ud83c\udf84"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string/jumbo v2, "\ud83c\udf81"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string/jumbo v2, "\ud83c\udf88"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string/jumbo v2, "\ud83d\udd2e"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string/jumbo v2, "\ud83c\udfa5"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v2, "\ud83d\udcf7"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string/jumbo v2, "\ud83d\udcbf"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string/jumbo v2, "\ud83d\udcbb"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string/jumbo v2, "\u260e"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string/jumbo v2, "\ud83d\udce1"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string/jumbo v2, "\ud83d\udcfa"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string/jumbo v2, "\ud83d\udcfb"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string/jumbo v2, "\ud83d\udd09"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string/jumbo v2, "\ud83d\udd14"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string/jumbo v2, "\u23f3"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string/jumbo v2, "\u23f0"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string/jumbo v2, "\u231a"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string/jumbo v2, "\ud83d\udd12"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string/jumbo v2, "\ud83d\udd11"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string/jumbo v2, "\ud83d\udd0e"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string/jumbo v2, "\ud83d\udca1"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string/jumbo v2, "\ud83d\udd26"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string/jumbo v2, "\ud83d\udd0c"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string/jumbo v2, "\ud83d\udd0b"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string/jumbo v2, "\ud83d\udebf"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string/jumbo v2, "\ud83d\udebd"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string/jumbo v2, "\ud83d\udd27"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string/jumbo v2, "\ud83d\udd28"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string/jumbo v2, "\ud83d\udeaa"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string/jumbo v2, "\ud83d\udeac"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string/jumbo v2, "\ud83d\udca3"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string/jumbo v2, "\ud83d\udd2b"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string/jumbo v2, "\ud83d\udd2a"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string/jumbo v2, "\ud83d\udc8a"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string/jumbo v2, "\ud83d\udc89"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string/jumbo v2, "\ud83d\udcb0"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string/jumbo v2, "\ud83d\udcb5"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string/jumbo v2, "\ud83d\udcb3"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string/jumbo v2, "\u2709"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string/jumbo v2, "\ud83d\udceb"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string/jumbo v2, "\ud83d\udce6"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string/jumbo v2, "\ud83d\udcc5"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string/jumbo v2, "\ud83d\udcc1"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string/jumbo v2, "\u2702"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string/jumbo v2, "\ud83d\udccc"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string/jumbo v2, "\ud83d\udcce"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string/jumbo v2, "\u2712"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string/jumbo v2, "\u270f"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string/jumbo v2, "\ud83d\udcd0"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string/jumbo v2, "\ud83d\udcda"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string/jumbo v2, "\ud83d\udd2c"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string/jumbo v2, "\ud83d\udd2d"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string/jumbo v2, "\ud83c\udfa8"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string/jumbo v2, "\ud83c\udfac"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string/jumbo v2, "\ud83c\udfa4"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string/jumbo v2, "\ud83c\udfa7"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string/jumbo v2, "\ud83c\udfb5"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string/jumbo v2, "\ud83c\udfb9"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string/jumbo v2, "\ud83c\udfbb"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string/jumbo v2, "\ud83c\udfba"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string/jumbo v2, "\ud83c\udfb8"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string/jumbo v2, "\ud83d\udc7e"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string/jumbo v2, "\ud83c\udfae"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string/jumbo v2, "\ud83c\udccf"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string/jumbo v2, "\ud83c\udfb2"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string/jumbo v2, "\ud83c\udfaf"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string/jumbo v2, "\ud83c\udfc8"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string/jumbo v2, "\ud83c\udfc0"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string/jumbo v2, "\u26bd"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string/jumbo v2, "\u26be"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string/jumbo v2, "\ud83c\udfbe"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string/jumbo v2, "\ud83c\udfb1"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string/jumbo v2, "\ud83c\udfc9"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string/jumbo v2, "\ud83c\udfb3"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string/jumbo v2, "\ud83c\udfc1"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string/jumbo v2, "\ud83c\udfc7"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string/jumbo v2, "\ud83c\udfc6"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string/jumbo v2, "\ud83c\udfca"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string/jumbo v2, "\ud83c\udfc4"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string/jumbo v2, "\u2615"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string/jumbo v2, "\ud83c\udf7c"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string/jumbo v2, "\ud83c\udf7a"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string/jumbo v2, "\ud83c\udf77"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string/jumbo v2, "\ud83c\udf74"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string/jumbo v2, "\ud83c\udf55"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string/jumbo v2, "\ud83c\udf54"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string/jumbo v2, "\ud83c\udf5f"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string/jumbo v2, "\ud83c\udf57"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string/jumbo v2, "\ud83c\udf71"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string/jumbo v2, "\ud83c\udf5a"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string/jumbo v2, "\ud83c\udf5c"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string/jumbo v2, "\ud83c\udf61"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string/jumbo v2, "\ud83c\udf73"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string/jumbo v2, "\ud83c\udf5e"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string/jumbo v2, "\ud83c\udf69"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string/jumbo v2, "\ud83c\udf66"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string/jumbo v2, "\ud83c\udf82"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string/jumbo v2, "\ud83c\udf70"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string/jumbo v2, "\ud83c\udf6a"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string/jumbo v2, "\ud83c\udf6b"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string/jumbo v2, "\ud83c\udf6d"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string/jumbo v2, "\ud83c\udf6f"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string/jumbo v2, "\ud83c\udf4e"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string/jumbo v2, "\ud83c\udf4f"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string/jumbo v2, "\ud83c\udf4a"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string/jumbo v2, "\ud83c\udf4b"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string/jumbo v2, "\ud83c\udf52"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string/jumbo v2, "\ud83c\udf47"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string/jumbo v2, "\ud83c\udf49"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string/jumbo v2, "\ud83c\udf53"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string/jumbo v2, "\ud83c\udf51"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string/jumbo v2, "\ud83c\udf4c"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string/jumbo v2, "\ud83c\udf50"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string/jumbo v2, "\ud83c\udf4d"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string/jumbo v2, "\ud83c\udf46"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string/jumbo v2, "\ud83c\udf45"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string/jumbo v2, "\ud83c\udf3d"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string/jumbo v2, "\ud83c\udfe1"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string/jumbo v2, "\ud83c\udfe5"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string/jumbo v2, "\ud83c\udfe6"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string/jumbo v2, "\u26ea"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string/jumbo v2, "\ud83c\udff0"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string/jumbo v2, "\u26fa"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string/jumbo v2, "\ud83c\udfed"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string/jumbo v2, "\ud83d\uddfb"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string/jumbo v2, "\ud83d\uddfd"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string/jumbo v2, "\ud83c\udfa0"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string/jumbo v2, "\ud83c\udfa1"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string/jumbo v2, "\u26f2"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string/jumbo v2, "\ud83c\udfa2"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string/jumbo v2, "\ud83d\udea2"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string/jumbo v2, "\ud83d\udea4"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string/jumbo v2, "\u2693"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string/jumbo v2, "\ud83d\ude80"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string/jumbo v2, "\u2708"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string/jumbo v2, "\ud83d\ude81"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string/jumbo v2, "\ud83d\ude82"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string/jumbo v2, "\ud83d\ude8b"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string/jumbo v2, "\ud83d\ude8e"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string/jumbo v2, "\ud83d\ude8c"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string/jumbo v2, "\ud83d\ude99"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string/jumbo v2, "\ud83d\ude97"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string/jumbo v2, "\ud83d\ude95"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string/jumbo v2, "\ud83d\ude9b"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string/jumbo v2, "\ud83d\udea8"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string/jumbo v2, "\ud83d\ude94"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string/jumbo v2, "\ud83d\ude92"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string/jumbo v2, "\ud83d\ude91"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string/jumbo v2, "\ud83d\udeb2"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string/jumbo v2, "\ud83d\udea0"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string/jumbo v2, "\ud83d\ude9c"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string/jumbo v2, "\ud83d\udea6"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string/jumbo v2, "\u26a0"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string/jumbo v2, "\ud83d\udea7"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string/jumbo v2, "\u26fd"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string/jumbo v2, "\ud83c\udfb0"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string/jumbo v2, "\ud83d\uddff"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string/jumbo v2, "\ud83c\udfaa"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string/jumbo v2, "\ud83c\udfad"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string/jumbo v2, "\ud83c\uddef\ud83c\uddf5"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string/jumbo v2, "\ud83c\uddf0\ud83c\uddf7"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string/jumbo v2, "\ud83c\udde9\ud83c\uddea"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string/jumbo v2, "\ud83c\udde8\ud83c\uddf3"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string/jumbo v2, "\ud83c\uddfa\ud83c\uddf8"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string/jumbo v2, "\ud83c\uddeb\ud83c\uddf7"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string/jumbo v2, "\ud83c\uddea\ud83c\uddf8"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string/jumbo v2, "\ud83c\uddee\ud83c\uddf9"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string/jumbo v2, "\ud83c\uddf7\ud83c\uddfa"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string/jumbo v2, "\ud83c\uddec\ud83c\udde7"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string/jumbo v2, "1\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string/jumbo v2, "2\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string/jumbo v2, "3\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string/jumbo v2, "4\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string/jumbo v2, "5\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string/jumbo v2, "6\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string/jumbo v2, "7\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string/jumbo v2, "8\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string/jumbo v2, "9\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string/jumbo v2, "0\u20e3"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string/jumbo v2, "\ud83d\udd1f"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string/jumbo v2, "\u2757"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string/jumbo v2, "\u2753"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string/jumbo v2, "\u2665"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string/jumbo v2, "\u2666"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string/jumbo v2, "\ud83d\udcaf"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string/jumbo v2, "\ud83d\udd17"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string/jumbo v2, "\ud83d\udd31"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string/jumbo v2, "\ud83d\udd34"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string/jumbo v2, "\ud83d\udd35"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string/jumbo v2, "\ud83d\udd36"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string/jumbo v2, "\ud83d\udd37"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojis:[Ljava/lang/String;

    .line 40
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->offsets:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x10
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToInt([BI)I
    .locals 2
    .param p0, "arr"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 43
    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static bytesToLong([BI)J
    .locals 8
    .param p0, "arr"    # [B
    .param p1, "offset"    # I

    .prologue
    const-wide/16 v6, 0xff

    .line 47
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x7f

    and-long/2addr v0, v2

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static emojify([B)[Ljava/lang/String;
    .locals 6
    .param p0, "sha256"    # [B

    .prologue
    const/4 v5, 0x5

    .line 53
    array-length v2, p0

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    .line 54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "sha256 needs to be exactly 32 bytes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_0
    new-array v1, v5, [Ljava/lang/String;

    .line 56
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 57
    sget-object v2, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojis:[Ljava/lang/String;

    sget-object v3, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->offsets:[I

    aget v3, v3, v0

    invoke-static {p0, v3}, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->bytesToInt([BI)I

    move-result v3

    sget-object v4, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojis:[Ljava/lang/String;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return-object v1
.end method

.method public static emojifyForCall([B)[Ljava/lang/String;
    .locals 9
    .param p0, "sha256"    # [B

    .prologue
    const/4 v8, 0x4

    .line 63
    new-array v1, v8, [Ljava/lang/String;

    .line 64
    .local v1, "result":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_0

    .line 65
    sget-object v2, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojis:[Ljava/lang/String;

    mul-int/lit8 v3, v0, 0x8

    invoke-static {p0, v3}, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->bytesToLong([BI)J

    move-result-wide v4

    sget-object v3, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojis:[Ljava/lang/String;

    array-length v3, v3

    int-to-long v6, v3

    rem-long/2addr v4, v6

    long-to-int v3, v4

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    return-object v1
.end method
